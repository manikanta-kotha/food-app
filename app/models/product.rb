class Product < ApplicationRecord
  validates :name, presence: true
  validates :image_url, presence: true
  validates :description, presence: true
  validates :price, presence: true
end
