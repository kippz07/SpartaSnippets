# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# user_1.update_attribute :admin, true

snippet_1 = Snippet.create!(question: "What is Mindfulness?", answer: "The ability to be fully present, aware and not overly reactive or overwhelmed by what is going on around us.")
snippet_2 = Snippet.create!(question: "What is Agile?", answer: "Agile is a time-boxed, iterative approach to software delivery.")
