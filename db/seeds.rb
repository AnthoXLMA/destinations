# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Deleting Rubriques"
Rubrique.delete_all
puts "Deleting Themes"
Theme.delete_all
puts "Deleting Destinations"
Destination.delete_all

puts 'Creating Destinations...'
@destinationspath = "./db/fixtures/destinations.json"
@serialized_destinations = File.read(@destinationspath)
@destinations = JSON.parse(@serialized_destinations)
@destinations.each do |d|
  Destination.create(city: d['city'])
end

puts 'Creating Themes...'
@themespath = "./db/fixtures/themes.json"
@serialized_themes = File.read(@themespath)
@themes = JSON.parse(@serialized_themes)
@themes.each do |t|
  Theme.create(title: t['title'])
end

puts 'Creating Rubriques...'
@rubriquespath = "./db/fixtures/rubriques.json"
@serialized_rubriques = File.read(@rubriquespath)
@rubriques = JSON.parse(@serialized_rubriques)
@rubriques.each do |c|
  Rubrique.create(chapter: c['chapter'], theme_id: c['theme_id'])
end
