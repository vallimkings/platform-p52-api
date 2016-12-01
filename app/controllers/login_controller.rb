class LoginController < ApplicationController

  skip_before_action :require_logged_user

  def authenticate
    authenticate = AuthenticateUser.call(params[:email], params[:password])

    if authenticate.success?
      render json: { auth_token: authenticate.result }
    else
      render json: { error: authenticate.errors }, status: :unauthorized
    end
  end

  def destroy
    reset_session
    respond_to do |format|
      format.json { head :no_content }
      end
    end
end
