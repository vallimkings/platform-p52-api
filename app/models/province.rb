class Province < ActiveRecord::Base

    has_many :city, dependent: :delete_all
    validates :name, uniqueness: true, presence: true

end
