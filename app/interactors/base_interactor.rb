class BaseInteractor

  def initialize(config = {})
    base_interactor_config config
  end

  def all(parent_id = nil)
    if parent_id.present?
      @parent_interactor.get(parent_id)
      @model_class.public_send("find_by_#{@parent_model_name}".to_sym, parent_id)
    else
      @model_class.all
    end
  end

  def get(id)
    model_not_found_checker { @model_class.find_by_id(id) }
  end

  def create(fields, parent_id = nil)
    fields.store("#{@parent_model_name}_id".to_sym, parent_id) if parent_id.present? && get_parent(parent_id)
    model = @model_class.new(fields)
    model.save! rescue raise ValidationError.new (model.errors)
    yield model if block_given?
    model
  end

  def update(model, fields)
    model.update!(fields) rescue raise ValidationError.new (model.errors)
    yield if block_given?
    model
  end

  def delete(model)
    model.destroy! rescue raise ValidationError.new (model.errors)
  end

  protected

    def self.only(*actions)
      private_actions = POSSIBLE_ACTIONS - actions
      private_actions.each { |action| private action }
    end

    def self.except(*actions)
      actions.each { |action| private action }
    end

    def model_not_found_checker
      model = yield
      raise NotFoundError.new if model.nil?
      model
    end

    def parent_interactor
      @parent_interactor
    end

    def get_parent(parent_id)
      @parent_interactor.get(parent_id)
      rescue NotFoundError
      nil
    end

  private
    POSSIBLE_ACTIONS = [:all, :get, :create, :update, :delete]

    def base_interactor_config(config)
      @model_class = config[:model]
      parent_model = config[:parent_model]

      if parent_model.present?
        @parent_interactor = "#{parent_model.name}Interactor".constantize.instance
        @parent_model_name = parent_model.name.underscore
      end
    end
end
