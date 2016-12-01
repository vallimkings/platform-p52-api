require "singleton"
class ProvinceInteractor < BaseInteractor

  include Singleton

  def initialize
    super model: Province
  end

  def create(fields)
    super fields
  end

  def update(province, fields)
    super province, fields
  end

end
