class Patient < ApplicationRecord
	has_and_belongs_to_many :users, :uniq => true
	has_many :accelerometers
	has_many :heartrates
	validates :name, presence: true, length: { maximum: 50 }
	validates :patient_num, presence: true
end
