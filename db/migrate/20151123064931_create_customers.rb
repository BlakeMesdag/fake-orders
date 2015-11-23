class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :email
      t.string :primary_address_id
      t.string :first_name
      t.string :last_name
      t.integer :last_order_id
      t.boolean :accepts_marketing

      t.timestamps null: false
    end
  end
end
