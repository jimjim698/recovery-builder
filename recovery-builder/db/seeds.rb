# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

House.create(name: "Serenity")
House.create(name: "Holladay")
House.create(name: "Millcreek")

User.create(name: "Jim", password: "cool", house_id: 1, manager: true)
User.create(name: "Bob", password: "cool", house_id: 2, manager: true)
User.create(name: "Katie", password: "cool", house_id: 3, manager: true)


User.create(name: "Jacob", password: "cool", house_id: 1, manager: false)
User.create(name: "Johnny", password: "cool", house_id: 1, manager: false)
User.create(name: "Josh", password: "cool", house_id: 1, manager: false, points: 11, employed: true)
User.create(name: "Jason", password: "cool", house_id: 2, manager: false, points: 11, employed: true)


User.create(name: "Sven", password: "cool", house_id: 2, manager: false)
User.create(name: "Steven", password: "cool", house_id: 2, manager: false)
User.create(name: "Lyle", password: "cool", house_id: 2, manager: false, points: 11, employed: true)
User.create(name: "Patrick", password: "cool", house_id: 2, manager: false, points: 11, employed: true)


User.create(name: "Nicole", password: "cool", house_id: 23, manager: false)
User.create(name: "Kim", password: "cool", house_id: 23, manager: false)
User.create(name: "Kylie", password: "cool", house_id: 23, manager: false, points: 11, employed: true)
User.create(name: "Veronica", password: "cool", house_id: 23, manager: false, points: 11, employed: true)
