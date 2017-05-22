class AddStatusToAdvertisements < ActiveRecord::Migration
  def change
    add_column :advertisements, :status, :boolean
    add_column :advertisements, :highlights, :boolean
    add_column :advertisements, :highlights_initial, :datetime
  end
end
