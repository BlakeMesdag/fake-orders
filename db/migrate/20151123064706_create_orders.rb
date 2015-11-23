class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :payment_status
      t.text :notes
      t.string :email
      t.integer :shipping_address_id
      t.integer :billing_address_id, null: :false
      t.string :card_token

      t.timestamps null: false
    end
  end
end
