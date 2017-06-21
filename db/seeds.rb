# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def languages
  Language.create(name:'Ruby')
  Language.create(name:'Python')
  Language.create(name:'JavaScript')
  Language.create(name:'Other')
end

case Rails.env
when "test"
  languages
when "development"
  languages
when "production"
  languages
end
