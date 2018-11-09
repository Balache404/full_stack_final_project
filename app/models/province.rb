class Province < ApplicationRecord
	has_many :users

	validates :name, :tax, presence: true
end
