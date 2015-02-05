class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :name
      t.string :address_line_one
      t.string :address_line_two
      t.string :city
      t.string :state
      t.integer :zipcode
      t.integer :phone_number

      t.timestamps null: false
    end
  end
end
