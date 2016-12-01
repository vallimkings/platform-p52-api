class ProvincesController < ApplicationController

  before_action :require_logged_user, :only => [:create, :update, :destroy]

  def index
    @provinces = interactor.all
    logger.info "all provinces with sucess"
  end

  def show
    @province = authorized_province
  end

  def create
    @province = interactor.create(province_params)
    respond_to do |format|
      format.json { render :show, status: :created}
    end
  end

  def update
    @province = interactor.update(authorized_province, province_params)
    respond_to do |format|
      format.json { render :show, status: :ok}
    end
  end

  def destroy
    interactor.delete(authorized_province)
    respond_to do |format|
      format.json { head :no_content }
    end
  end


  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def province_params
      params.permit(:name)
    end

    def interactor
      ProvinceInteractor.instance
    end

    def province_template
      Province.new
    end

    def authorized_province
      interactor.get(params[:id])
    end

end
