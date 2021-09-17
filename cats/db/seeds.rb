# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cat.destroy_all
c1 = Cat.create!(name: "tattoed", birth_date: "2013/12/13", color: "white", sex:"F", description: "tattoed white cat" )
c2 = Cat.create!(name: "efren", birth_date: "2010/11/19", color: "brown", sex:"M", description: "green shirt efren" )
c3 = Cat.create!(name: "tristan", birth_date: "2016/08/03", color: "black", sex:"F", description: "silly pnada cat" )

