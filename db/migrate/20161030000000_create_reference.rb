class CreateReference < ActiveRecord::Migration
    def change
      add_reference :images, :advertisement, index: true, foreign_key: true
    end
end
