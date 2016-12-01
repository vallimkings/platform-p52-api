module Authentication
  extend ActiveSupport::Concern

  included do
    helper_method :require_logged_user
  end

  private
   def require_logged_user
     @current_user = AuthorizeApiRequest.call(request.headers).result
     render json: { error: 'Not Authorized' }, status: 401 unless @current_user
   end

end
