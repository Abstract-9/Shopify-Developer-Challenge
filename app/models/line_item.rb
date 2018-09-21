class LineItem < ApplicationRecord
  belongs_to :product
  validates :name, presence: true, length: {minimum: 5}
  validates :value, presence: true
end
