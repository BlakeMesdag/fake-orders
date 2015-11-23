class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.string :title
      t.decimal :price
      t.integer :order_id

      t.timestamps null: false
    end
  end
end
