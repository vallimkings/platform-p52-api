class RemovePathFromImages < ActiveRecord::Migration
  def change
    remove_column :images, :path
  end
end
