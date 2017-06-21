# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Response.create(languages: ['Ruby', 'JavaScript', 'Python'], location: 'London')
Response.create(languages: ['Python'], location: 'London')
Response.create(languages: ['Scala'], location: 'Berlin')
Response.create(languages: ['JavaScript'], location: 'Tokyo')
Language.create(language: 'Ruby')
Language.create(language: 'Python')
Language.create(language: 'JavaScript')
Language.create(language: 'Java')
Language.create(language: 'C')
Language.create(language: 'C++')
Language.create(language: 'C#')
Language.create(language: 'Objective-C')
Language.create(language: 'PHP')
Language.create(language: 'IOS')
Language.create(language: 'SQL')
Language.create(language: 'Scala')
Language.create(language: 'Haskell')
Language.create(language: 'Clojure')
Language.create(language: 'VB .NET')
Language.create(language: 'Swift')
Language.create(language: 'Perl')
Language.create(language: 'Other')
