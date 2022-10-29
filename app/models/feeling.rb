class Feeling < ApplicationRecord
  belongs_to :user
  has_one :order
  has_one_attached :photo
  validates :percentage, numericality: { less_than_or_equal_to: 100, only_integer: true }
end
