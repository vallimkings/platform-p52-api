class CreateTablePush < ActiveRecord::Migration
  def change
    create_table :table_pushes do |t|
      t.string :token

      t.timestamps null: false
    end
  end
end
