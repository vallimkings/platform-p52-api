class CreateProvince < ActiveRecord::Migration
  def change
    create_table :provinces do |t|
      t.string :name
      t.string :acronym

      t.timestamps null: false
    end
  end
end
