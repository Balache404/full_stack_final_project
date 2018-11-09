class User < ApplicationRecord
  belongs_to :province

  has_many :orders

  validates :province, :username, :password, :email_address, :mailing_address, :is_admin, presence: true
end
