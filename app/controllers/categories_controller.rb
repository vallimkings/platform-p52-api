class CategoriesController < ApplicationController

  before_action :require_logged_user, :only => [:create, :update, :destroy]

  def index
    @categories = interactor.all.order(:name)
  end

  def show
    @category = authorized_catogory
  end

  def create
    @category = interactor.create(category_params)
    respond_to do |format|
      format.json { render :show, status: :created}
    end
  end

  def update
    @category = interactor.update(authorized_catogory, category_params)
    respond_to do |format|
      format.json { render :show, status: :ok}
    end
  end

  def destroy
    interactor.delete(authorized_catogory)
    respond_to do |format|
      format.json { head :no_content }
    end
  end


  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.permit(:name, :icon)
    end

    def interactor
      CategoryInteractor.instance
    end

    def province_template
      Category.new
    end

    def authorized_catogory
      interactor.get(params[:id])
    end

end
