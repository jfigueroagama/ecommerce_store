class Product < ApplicationRecord
  has_many :categories, through: :products_categories
  has_many :products_categories, dependent: :destroy
end
