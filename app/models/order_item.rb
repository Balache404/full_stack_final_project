class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :figure

  validates :order, :figure, :quantity, presence: true
end
