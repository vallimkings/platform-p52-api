require "singleton"
class AdvertisementInteractor < BaseInteractor

  include Singleton

  def initialize
    super model: Advertisement, parent_model: City
  end

  def create(fields, city_id)
    fields[:highlights_initial] = Time.now if fields[:highlights]
    super fields, city_id
  end

  def find_by_category(city_id, category_id)
      Advertisement.where(city_id: city_id, category_id: category_id)
  end

  def update(fields, advertisement)
    advertisement[:highlights_initial] = Time.now if advertisement[:highlights]
    super fields, advertisement
  end

end
