class Advertisement < ActiveRecord::Base

  belongs_to :city
  belongs_to :category
  has_many :image, dependent: :delete_all
  validates :name, :address, :neighborhood, :number, :zip_code, :city, :category, presence: true


  def self.find_by_city (city_id)
    self.where(city_id: city_id)
  end

  def self.find_by_highlights(city_id)
    self.where(city_id: city_id, highlights: true)
  end

end
