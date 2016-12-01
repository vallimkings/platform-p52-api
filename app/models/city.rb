class City < ActiveRecord::Base

    belongs_to :province
    has_many :advertisement, dependent: :delete_all
    validates :name, presence: true, uniqueness: { scope: :province}

end
