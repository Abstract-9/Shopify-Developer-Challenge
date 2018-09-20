class Product < ApplicationRecord
  has_many :line_items
  validates :value, presence: true
  validates :title, presence: true, length: {minimum: 5}
end
