class Product < ApplicationRecord
  has_many :line_items, dependent: :destroy
  has_and_belongs_to_many :orders
#  validates :value, presence: true
#  validates :name, presence: true, length: {minimum: 5}
end
