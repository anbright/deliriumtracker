# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.create!([
# 	{ name: 'foo', email: 'foo@bar.com', password_digest: User.digest('password')}
# 	])

User.create!(name: 'test', email: 'test@example.com', password: 'password')
User.create!(name: 'foo', email: 'foo@bar.com', password: 'password')

Patient.create!(name: 'Joe Smith', patient_num: 1)
Patient.create!(name: 'Jane Doe', patient_num: 2)
Patient.create!(name: 'Akshay Smith', patient_num: 3)


##Creating Accelerometer Data
#3 days ago
time = Time.now - (3*24*60*60)
ogtime = time

def get_rand
	rand(-10.0..10.0)
end

5_000.times do
	#increments by 1 min
	time += 60
	Accelerometer.create!(time: time.to_i, patient_id: 1, x:get_rand, y:get_rand, z:get_rand)
	Heartrate.create!(value: get_rand, patient_num: 1)
end

time = ogtime

# 5_000.times do
# 	time += 60
# 	Accelerometer.create!(time: time.to_i, patient_id: 2, x:get_rand, y:get_rand, z:get_rand)
# end

# time = ogtime

# 5_000.times do
# 	time += 60
# 	Accelerometer.create!(time: time.to_i, patient_id: 3, x:get_rand, y:get_rand, z:get_rand)
# end
