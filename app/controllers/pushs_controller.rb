class PushsController < ApplicationController

  def index
    @pushs = interactor.all
  end

  def show
    @push = authorized_push
  end

  def create
    @push = interactor.create(push_params)
    respond_to do |format|
      format.json { render :show, status: :created}
    end
  end

  def update
    @push = interactor.update(authorized_push)
    respond_to do |format|
      format.json { render :show, status: :ok}
    end
  end

  def destroy
    interactor.delete(authorized_push)
    respond_to do |format|
      format.json { head :no_content }
    end
  end


  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def push_params
      params.permit(:token)
    end

    def interactor
      PushInteractor.instance
    end

    def authorized_push
      interactor.get(params[:id])
    end

end
