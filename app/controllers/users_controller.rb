class UsersController < ApplicationController

  before_action :require_logged_user

  def index
    @users = interactor.all
  end

  def show
    @user = authorized_user
  end

  def create
    @user = interactor.create(user_params)
    respond_to do |format|
      format.json { render :show, status: :created}
    end
  end

  def update
    @user = interactor.update(authorized_user, user_params)
    respond_to do |format|
      format.json { render :show, status: :ok}
    end
  end

  def destroy
    interactor.delete(authorized_user)
    respond_to do |format|
      format.json { head :no_content }
    end
  end


  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.permit(:name, :email, :password_digest)
    end

    def interactor
      UserInteractor.instance
    end

    def user_template
      User.new
    end

    def authorized_user
      raise NotFoundError.new unless interactor.get(params[:id])
      interactor.get(params[:id])
    end

end
