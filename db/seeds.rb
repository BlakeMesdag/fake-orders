# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def create_order
  order = Order.new
  order.customer = Customer.new

  order.email = order.customer.email = Faker::Internet.email

  order.shipping_address = Address.new
  order.billing_address = Address.new
  order.line_items = [LineItem.new, LineItem.new, LineItem.new]

  populate_address(order.shipping_address)

  if rand(10) > 5
    order.billing_address.attributes = order.shipping_address.attributes
  else
    populate_address(order.billing_address)
  end

  populate_order_line_items(order)

  order.customer.first_name = order.shipping_address.first_name
  order.customer.last_name = order.shipping_address.last_name

  order.save!
end

def populate_order(order)
  order.notes = Faker::Lorem.paragraph

  order
end

def populate_address(address)
  name = Faker::Name.name

  address.first_name, address.last_name = *name.split(' ')
  address.address1 = Faker::Address.street_address
  address.country = Faker::Address.country
  address.state = Faker::Address.state
  address.city = Faker::Address.city
  address.postal_code = Faker::Address.zip
  address.phone_number = Faker::PhoneNumber.phone_number

  address
end

def populate_order_line_items(order)
  order.line_items.each do |line_item|
    line_item.title = Faker::Commerce.product_name
    line_item.price = Faker::Commerce.price
  end
end


10_000.times do
  create_order
end
