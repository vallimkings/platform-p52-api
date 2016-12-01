require "singleton"
class LoginInteractor < BaseInteractor

  include Singleton

  def initialize
    super model: User
  end

  def create(fields)
    super fields
  end

  def update(user, fields)
    super user, fields
  end

end
