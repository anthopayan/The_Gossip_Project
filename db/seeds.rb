# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
City.destroy_all
GossipTagLink.destroy_all
Gossip.destroy_all
PrivateMessage.destroy_all
Tag.destroy_all

require 'faker'
5.times do |f|
    users = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Games::Pokemon.name, age: Faker::Number.non_zero_digit, email: Faker::Internet.email)
    cities = City.create!(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
    gossips = Gossip.create!(title: Faker::Restaurant.name, content: Faker::Restaurant.description)
    #private_messages = PrivateMessage.create!(
    tags = Tag.create!(name: Faker::Games::ElderScrolls.last_name)
    #gossip_tag_links = GossipTagLink.create!(
end