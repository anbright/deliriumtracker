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

#User.create!(name: 'test', email: 'test@example.com', password: User.digest('password'))
User.find(1).patients.create(name: 'Robert')
# User.find(1).patients.create(name: 'Jane')

