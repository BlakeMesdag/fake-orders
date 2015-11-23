class Order < ActiveRecord::Base
  belongs_to :shipping_address, class_name: "Address"
  belongs_to :billing_address, class_name: "Address"

  has_one :customer, foreign_key: :email, primary_key: :email

  has_many :line_items
end
