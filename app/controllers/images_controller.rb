class ImagesController < ApplicationController

  before_action :require_logged_user, :only => [:create, :update, :destroy]

  def index
    @images = interactor.all(image_template.advertisement_id)
  end

  def show
    @image = authorized_image
  end

  def create
     @image = interactor.create(image_params, image_template.advertisement_id)
     render "show.json", status: :created
  end

  def update
    @image = interactor.update(authorized_image, image_params)
    respond_to do |format|
      format.json { render :show, status: :ok}
    end
  end

  def destroy
    interactor.delete(authorized_image)
    respond_to do |format|
      format.json { head :no_content }
    end
  end


  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def image_params
      params.permit(:title, :description, :avatar)
    end

    def interactor
      ImageInteractor.instance
    end

    def image_template
      Image.new(advertisement_id: params[:advertisement_id])
    end

    def authorized_image
      interactor.get(params[:id])
    end

end
