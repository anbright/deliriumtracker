class User < ApplicationRecord
	before_save { self.email = email.downcase }
	validates :name, presence: true { maximum: 50 }
	validates :email, presence: true { maximum: 200 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: true
end
