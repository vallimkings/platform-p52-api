class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session,
     if: Proc.new { |c| c.request.format =~ %r{application/json} }

  include Authentication

  rescue_from ValidationError, with: :validation_error
  rescue_from NotFoundError, with: :not_found_error

  def validation_error(exception)
    @error_messages = exception.errors
    respond_to do |format|
      format.json { render :validation_error, status: :unprocessable_entity}
    end
  end

  def not_found_error
  respond_to do |format|
    format.any(:json,:xml,:html) { head :not_found }
  end
end

end
