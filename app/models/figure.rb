class Figure < ApplicationRecord
  belongs_to :character
  belongs_to :series

  has_many :order_items

  validates :character, :series, :name, :figure_type, :manufacturer, :description, :image, :price, presence: true
end
