class Product < ApplicationRecord
  has_many :order_products, dependent: :destroy
end
