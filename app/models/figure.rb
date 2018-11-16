class Figure < ApplicationRecord
  belongs_to :character
  belongs_to :series

  has_many :order_items
  has_many :orders, through: :order_items

  validates :character, :series, :name, :figure_type, :manufacturer, :description, :image, :price, presence: true

  mount_uploader :image, FigureUploader
end
