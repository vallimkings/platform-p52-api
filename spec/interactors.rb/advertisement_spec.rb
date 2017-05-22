require "rails_helper"

RSpec.describe AdvertisementInteractor do

  before do
    @interactor = AdvertisementInteractor.instance
    @category = Category.first
    @city = City.first
  end

  before do
    2.times { create(:advertisement, name: Time.now.to_s, category: @category, city: @city) }
  end

  context "get advertisements" do
    it "should create two advertisements" do
      advertisements = @interactor.all
      expect(advertisements.size).to eq 2
    end
  end

  context "delete a advertisements" do
    it "should delete an advertisements" do
      Advertisement.first.delete

      advertisements = @interactor.all
      expect(advertisements.size).to eq 1
    end
  end

end
