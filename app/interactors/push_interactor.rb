require "singleton"
class PushInteractor < BaseInteractor

  include Singleton

  def initialize
    super model: Push
  end

  def create(fields)
    super fields
  end

  def update(fiselds)
    super fields
  end

end
