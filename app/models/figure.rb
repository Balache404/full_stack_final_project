class Figure < ApplicationRecord
  belongs_to :character
  belongs_to :series

  has_many :order_items
end
