class CreateAdvertisement < ActiveRecord::Migration
  def change
    create_table :advertisements do |t|
      t.string :address
      t.string :number
      t.string :neighborhood
      t.string :zip_code
      t.string :name
      t.string :description
      t.string :phone_number
      t.string :cel_phone
      t.string :link_site
      t.string :link_facebook
      t.string :highlights
      t.string :highlights_initial
      t.string :highlights_duration
      t.string :status
      t.references :city, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
