class Order < ApplicationRecord
  belongs_to :user

  has_many :order_items
  has_many :figures, through: :order_items

  validates :user, :date_placed, :total_price, :order_status, presence: true
end
