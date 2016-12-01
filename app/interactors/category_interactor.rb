require "singleton"
class CategoryInteractor < BaseInteractor

  include Singleton

  def initialize
    super model: Category
  end

  def create(fields)
    super fields
  end

  def update(province, fields)
    super province, fields
  end

end
