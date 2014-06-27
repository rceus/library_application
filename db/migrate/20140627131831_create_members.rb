class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.string :street
      t.integer :city_id
      t.integer :country_id
      t.integer :phone
      t.string :email

      t.timestamps
    end
  end
end
