class Patient < ApplicationRecord
	has_and_belongs_to_many :users, :uniq => true
	has_many :accelerometers
	validates :name, presence: true, length: { maximum: 50 }
end
