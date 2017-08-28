# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# A user...
user = User.create(username: 'username')
# ... with a personal repository
myrepo = Repository.create(name: 'Personal Project', owner: user)

# An organization...
organization = Organization.create(name: 'Hackergroup')
# ... with a shared repository
orgrepo = Repository.create(name: 'Big Project', owner: organization)

# user belongs to the organization
membership = Membership.create(user: user, organization: organization)

puts "User's repositories:"
puts user.repositories.pluck(:name)
