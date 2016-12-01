require "singleton"
class ImageInteractor < BaseInteractor

  include Singleton

  def initialize
    super model: Image, parent_model: Advertisement
  end

  def create(fields, advertisement)
    super fields, advertisement
  end

  def update(image, fields)
    super image, fields
  end

end
