require "rails_helper"

RSpec.describe User, :type => :model do

  context "create users" do
    it "should create an user" do
      user = build(:user)
      expect(user).to be_valid
    end

  end
end
