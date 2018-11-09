class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :figure

  vaildates :order, :figure, :quantity, presence: true
end
