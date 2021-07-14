# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# ProjectType
ProjectType.create_or_find_by(name: "Light")
ProjectType.create_or_find_by(name: "Semi-Worky")
ProjectType.create_or_find_by(name: "Oofta")

# Status
Status.create_or_find_by(name: "Open")
Status.create_or_find_by(name: "Gathering Requirements")
Status.create_or_find_by(name: "Gathering Resources")
Status.create_or_find_by(name: "Planning")
Status.create_or_find_by(name: "In Progress")
Status.create_or_find_by(name: "In Review")
Status.create_or_find_by(name: "Closed")

# no_1 client and user!
user = User.create_or_find_by(username: "Jeeves", password:"goodeveningmadam", email: "jeeves@DSC.com", admin: true)
Client.create_or_find_by(name: "North Seattle College GDSC", phone_number:"9377187997", user_id: user.id)
