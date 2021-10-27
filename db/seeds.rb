# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database'
Garden.destroy_all
Plant.destroy_all
puts 'Database has been cleaned'

puts 'Creating gardens'
Garden.create!(
  name: "Jardin d'Eden",
  banner_url: 'https://images.unsplash.com/photo-1560183721-b1a4a7768bbd?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=870&q=80'
)
potager = Garden.create!(
  name: 'Mon potager',
  banner_url: 'https://images.unsplash.com/photo-1592424451528-a5a6ae06af1c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=870&q=80s'
)
puts 'All gardens have been successfully created!'

puts 'Creating plants'
Plant.create!(
  name: 'Tomato',
  image_url: 'https://images.unsplash.com/photo-1607305387299-a3d9611cd469?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
  garden: potager
)
Plant.create!(
  name: 'Lettuce',
  image_url: 'https://images.unsplash.com/photo-1556781366-336f8353ba7c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=580&q=80',
  garden: potager
)
Plant.create!(
  name: 'Pumpkin',
  image_url: 'https://images.unsplash.com/photo-1508995476428-43d70c3d0042?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=387&q=80',
  garden: potager
)
puts 'All plants have been successfully created!'
