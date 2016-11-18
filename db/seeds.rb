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

Patient.create!(name: 'Joe Smith')



##Creating Accelerometer Data
Accelerometer.create!(time: 0, patient_id: 1, x: 2.6340000629425, y:-0.143999993801116, z:9.61499977111816)

time = Time.now.utc 

def get_rand
	rand(-10.0..10.0)
end

5_000.times do
	time += 5000
	Accelerometer.create!(time: Time.at(time), patient_id: 1, x:get_rand, y:get_rand, z:get_rand)
end

