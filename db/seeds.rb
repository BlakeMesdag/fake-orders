# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def create_order
  order = Order.new
  order.shipping_address = Address.new
  order.billing_address = Address.new
  order.line_items = [LineItem.new, LineItem.new, LineItem.new]
  order.save!
end

1.times do
  create_order
end
