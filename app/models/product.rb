class Product < ApplicationRecord
  has_many :line_items, dependent: :destroy
  validates :value, presence: true
  validates :name, presence: true, length: {minimum: 5}
end
