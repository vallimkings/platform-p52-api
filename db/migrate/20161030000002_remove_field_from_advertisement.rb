class RemoveFieldFromAdvertisement < ActiveRecord::Migration
  def change
    remove_column :advertisements, :status
    remove_column :advertisements, :highlights_initial
    remove_column :advertisements, :highlights
  end
end
