class AdvertisementsController < ApplicationController
 require 'wannabe_bool'
 before_action :require_logged_user, :only => [:create, :update, :destroy]

 def index
   if params[:highlights].to_b == true
     @advertisements = interactor.all(advertisement_template.city_id).where(status: true, highlights: true).order("RANDOM()")
   else
     @advertisements = interactor.all(advertisement_template.city_id).where(status: true)
   end
 end

  def show
    @advertisement = authorized_advertisement
  end

  def create
    advertisement_template
    @advertisement = interactor.create(advertisement_params, params[:city_id])
    respond_to do |format|
      format.json { render :show, status: :created}
    end
  end

  def update
    @advertisement = interactor.update(authorized_advertisement, advertisement_params)
    respond_to do |format|
      format.json { render :show, status: :ok}
    end
  end

  def destroy
    interactor.delete(authorized_advertisement)
    respond_to do |format|
      format.json { head :no_content }
    end
  end

  def by_category
    @advertisements = interactor.find_by_category(params[:city_id], params[:category_id])
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def advertisement_params
       params.permit(:address, :number, :neighborhood, :zip_code, :name, :description, :phone_number, :cel_phone, :link_site, :link_facebook, :highlights, :highlights_initial, :highlights_duration, :status, :category_id)
    end

    def interactor
      AdvertisementInteractor.instance
    end

    def authorized_advertisement
      advertisement = interactor.get(params[:id])
      advertisement
    end

    def advertisement_template
        Advertisement.new(city_id: params[:city_id], category: Category.find_by_id(params[:category_id]))
    end

end
