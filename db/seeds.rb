# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

50.times do |n|
  first_name = Gimei.first.kanji
  last_name = Gimei.last.kanji
  User.create!(
    first_name:         first_name,
    last_name:         last_name,
    gender: rand(1..2)
  )
end
