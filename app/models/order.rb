class Order < ApplicationRecord
  belongs_to :user
  belongs_to :feeling

  validates :total_price, presence: true
end
