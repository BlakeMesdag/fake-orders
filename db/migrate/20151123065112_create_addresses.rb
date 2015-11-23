class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :first_name
      t.string :last_name
      t.string :business_name
      t.string :address1
      t.string :address2
      t.string :country
      t.string :state
      t.string :city
      t.string :postal_code
      t.string :phone_number

      t.integer :customer_id

      t.timestamps null: false
    end
  end
end
