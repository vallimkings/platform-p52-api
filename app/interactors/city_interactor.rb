require 'singleton'
class CityInteractor < BaseInteractor

  include Singleton

  def initialize
    super model: City, parent_model: Province
  end

  def create(fields, province)
    super fields, province
  end

  def update(city, fields)
    super city, fields
  end

end
