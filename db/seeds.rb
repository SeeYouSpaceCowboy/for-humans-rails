# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   User.create(:name, :first_name, :last_name, :age, :zipcode, :password, :password_confirmation)

User.create(username: "seeyouspacecowboy", first_name: "Spike", last_name: "Spiegel", age: 27, zipcode: 00000, password: "bebop", password_confirmation: "bebop", img_url: 'http://static.zerochan.net/Spike.Spiegel.full.1553485.jpg')
User.create(username: "xmen", first_name: "Logan", last_name: "Howlet", age: 137, zipcode: 00000, password: "japan", password_confirmation: "japan", img_url: 'http://static.comicvine.com/uploads/original/11113/111132035/3617679-1250187068-xmen%25.jpg')
User.create(username: "ilovebaby", first_name: "Babisha", last_name: "Manandhar", age: 23, password: "simon", password_confirmation: "simon")
