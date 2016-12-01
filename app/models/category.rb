class Category < ActiveRecord::Base

    validates :name, uniqueness: true, presence: true
    validates :icon, presence: true

end
