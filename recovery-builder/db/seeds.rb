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

User.create(name: "Jim", password: "cool", house_id: 1, manager: true, bio: "COFFEE-DRINKER, EREADER ADDICT, BLOGGER. I’M VERY BUSY AND AWESOME")
User.create(name: "Bob", password: "cool", house_id: 2, manager: true, bio: "CURRENTLY WORKING TOWARDS AN MBA WITH AN EMPHASIS IN FANTASY FOOTBALL

")
User.create(name: "Katie", password: "cool", house_id: 3, manager: true, bio:"GENERALLY, THE PATH OF LEAST RESISTANCE APPEALS. ALSO, I AM EXCELLENT AT PARALLEL PARKING.

")


User.create(name: "Jacob", password: "cool", house_id: 1, manager: false, bio: "I ALWAYS FEEL SAD FOR SEEDLESS WATERMELONS, BECAUSE WHAT IF THEY WANTED BABIES?

")
User.create(name: "Johnny", password: "cool", house_id: 1, manager: false, bio: "I CAN QUOTE (INSERT MOVIE) BETTER THAN YOU AND ALL YOUR FRIENDS.

")
User.create(name: "Josh", password: "cool", house_id: 1, manager: false, points: 11, employed: true, bio: "I HAVE NOT LOST MY MIND – IT’S BACKED UP ON HD SOMEWHERE.

")
User.create(name: "Jason", password: "cool", house_id: 2, manager: false, points: 11, employed: true, bio: "I HAVE THIS NEW THEORY THAT HUMAN ADOLESCENCE DOESN’T END UNTIL YOUR EARLY THIRTIES.

")


User.create(name: "Sven", password: "cool", house_id: 2, manager: false, bio: "I HOPE ONE DAY I LOVE SOMETHING THE WAY WOMEN IN COMMERCIALS LOVE YOGURT

")
User.create(name: "Steven", password: "cool", house_id: 2, manager: false, bio: "I HAVE THIS NEW THEORY THAT HUMAN ADOLESCENCE DOESN’T END UNTIL YOUR EARLY THIRTIES.

")
User.create(name: "Lyle", password: "cool", house_id: 2, manager: false, points: 11, employed: true, bio: "I GREW UP IN SMALL TOWN OUTSIDE OF PHOENIX. I HAVE FOUR BROTHERS AND A DOG.

")
User.create(name: "Patrick", password: "cool", house_id: 2, manager: false, points: 11, employed: true, bio: "Running backwards serves no one")


User.create(name: "Nicole", password: "cool", house_id: 3, manager: false, bio: "I don't care about my nails or my hair")
User.create(name: "Kim", password: "cool", house_id: 3, manager: false, bio: "Thursday is the only day of the week with a T...except for Tueday")
User.create(name: "Kylie", password: "cool", house_id: 3, manager: false, points: 11, employed: true, bio: "The coldest day of the year is often the worst day of the year.")
User.create(name: "Veronica", password: "cool", house_id: 3, manager: false, points: 11, employed: true, bio: "Once upon a time I knew a person but I do not know them anymore, cause they moved.")

Goal.create(name: "Pick apples", point_value: 10, house_id: 1)
Goal.create(name: "Pick apples", point_value: 10, house_id: 2)
Goal.create(name: "Pick apples", point_value: 10, house_id: 3)
Goal.create(name: "Mow lawn", point_value: 13, house_id: 1)
Goal.create(name: "Mow lawn", point_value: 13, house_id: 2)
Goal.create(name: "Mow lawn", point_value: 13, house_id: 3)
Goal.create(name: "Clean garbages out", point_value: 6, house_id: 1)
Goal.create(name: "Clean out gutters", point_value: 9, house_id: 2)
Goal.create(name: "Find Jimmys Cell Phone", point_value: 100, house_id: 3)
Goal.create(name: "Go to meeting", point_value: 5, house_id: 1)
Goal.create(name: "Go to meeting", point_value: 5, house_id: 2)
Goal.create(name: "Go to meeting", point_value: 5, house_id: 3)
Goal.create(name: "Get Job", point_value: 50, house_id: 1)
Goal.create(name: "Get Job", point_value: 50, house_id: 2)
Goal.create(name: "Get Job", point_value: 50, house_id: 3)
Goal.create(name: "Assignment 1", point_value: 50, house_id: 1)
Goal.create(name: "Assignment 1", point_value: 50, house_id: 2)
Goal.create(name: "Assignment 1", point_value: 50, house_id: 3)
Goal.create(name: "Assignment 2", point_value: 50, house_id: 1)
Goal.create(name: "Assignment 2", point_value: 50, house_id: 2)
Goal.create(name: "Assignment 2", point_value: 50, house_id: 3)
