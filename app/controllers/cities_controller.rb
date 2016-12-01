class CitiesController < ApplicationController

  before_action :require_logged_user, :only => [:create, :update, :destroy]

  def index
    @cities = interactor.all.where(province_id: params[:province_id]).order(:name)
  end

  def show
    @city = authorized_city
  end

  def create
      @city = interactor.create(city_params, city_template.province_id)
      respond_to do |format|
        format.json { render :show, status: :created}
    end
  end

  def update
    @city = interactor.update(authorized_city, city_params)
    respond_to do |format|
      format.json { render :show, status: :ok}
    end
  end

  def destroy
    interactor.delete(authorized_city)
    respond_to do |format|
      format.json { head :no_content }
    end
  end


  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def city_params
      params.permit(:name)
    end

    def interactor
      CityInteractor.instance
    end

    def authorized_city
      city = interactor.get(params[:id])
      city
    end

    def city_template
      City.new(province: Province.find_by_id(params[:province_id]))
    end

end
