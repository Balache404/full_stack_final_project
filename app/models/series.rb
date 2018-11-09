class Series < ApplicationRecord
	has_many :figures

	validates :name, presence: true
end
