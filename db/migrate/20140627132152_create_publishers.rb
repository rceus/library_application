class CreatePublishers < ActiveRecord::Migration
  def change
    create_table :publishers do |t|
      t.string :name
      t.string :street
      t.integer :city_id
      t.integer :country_id
      t.integer :phone
      t.string :email
      t.string :status

      t.timestamps
    end
  end
end
