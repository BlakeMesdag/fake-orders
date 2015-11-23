class Customer < ActiveRecord::Base
  has_many :addresses
  has_many :orders, foreign_key: :email, primary_key: :email
end
