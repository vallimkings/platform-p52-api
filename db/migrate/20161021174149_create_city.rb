class CreateCity < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.references :province, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
