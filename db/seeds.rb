# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Reset DB"

OfficeFacility.destroy_all
Facility.destroy_all
Office.destroy_all

puts "Create Facilities"

Facility.create!(name: "Microwave")
Facility.create!(name: "Monitor")
Facility.create!(name: "Fridge")
Facility.create!(name: "Desk space")
Facility.create!(name: "Printer")
Facility.create!(name: "Projector")
Facility.create!(name: "Parking")
Facility.create!(name: "Coffee-machine")
Facility.create!(name: "Conference technology")
Facility.create!(name: "Fast Wi-Fi")
Facility.create!(name: "Accessibility")
Facility.create!(name: "Proximity to train station")
Facility.create!(name: "Proximity to bus stop")

puts "Seed completed"
