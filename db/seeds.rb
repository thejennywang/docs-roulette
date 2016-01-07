# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Article.destroy_all
Article.fetch
Backerkat.destroy_all

Backerkat.create!(name: 'Jenny', email: 'jenny@backerkit.com')
Backerkat.create!(name: 'Max', email: 'max@backerkit.com')
Backerkat.create!(name: 'Rosanna', email: 'rosanna@backerkit.com')
Backerkat.create!(name: 'Sean', email: 'sean@backerkit.com')
Backerkat.create!(name: 'Thomas', email: 'thomas@backerkit.com')
Backerkat.create!(name: 'Lew', email: 'lew@backerkit.com')
Backerkat.create!(name: 'Kaz', email: 'kaz@backerkit.com')
Backerkat.create!(name: 'John', email: 'john@backerkit.com')
Backerkat.create!(name: 'James', email: 'james@backerkit.com')
Backerkat.create!(name: 'Tommy', email: 'tommy@backerkit.com')
Backerkat.create!(name: 'Anna', email: 'anna@backerkit.com')
