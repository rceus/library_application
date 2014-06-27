class CreateShelves < ActiveRecord::Migration
  def change
    create_table :shelves do |t|
      t.string :shelf_name

      t.timestamps
    end
  end
end
