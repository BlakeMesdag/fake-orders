class Address < ActiveRecord::Base
  belongs_to :customer
  has_one :order, through: :customer
end
