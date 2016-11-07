class Patient < ApplicationRecord
	has_and_belongs_to_many :users, :uniq => true
	
	has_many :accelerometers
end
