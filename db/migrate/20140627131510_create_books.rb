class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.integer :isbn
      t.integer :author_id
      t.integer :publisher_id
      t.integer :category_id
      t.string :status

      t.timestamps
    end
  end
end
