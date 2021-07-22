# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
#https://github.com/faker-ruby/faker/blob/master/doc/default/hipster.md

6.times do |i|
  Article.create(
    title: Faker::Hipster.word, 
    author: Faker::Name.name, 
    text: Faker::Hipster.paragraph(sentence_count: 3)
  )
end
