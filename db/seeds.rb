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


10.times do |f|
    cities = City.create!(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
    tags = Tag.create!(title: Faker::Games::ElderScrolls.last_name)
end


10.times do |f|
    
    users = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Games::Pokemon.name, age: Faker::Number.non_zero_digit, email: Faker::Internet.email, city: City.find(f+1))
    gossips = Gossip.create!(title: Faker::Restaurant.name, content: Faker::Restaurant.description, user: User.find(f+1))
    gossips = Gossip.create!(title: Faker::Restaurant.name, content: Faker::Restaurant.description, user: User.find(f+1))
    private_messages = PrivateMessage.create!(content: Faker::Books::CultureSeries.book, sender: User.find(f+1))
    message_recipient_links = MessageRecipientLink.create!(private_message: PrivateMessage.find(f+1), recipient: User.find(f+1))
    gossip_tag_links = GossipTagLink.create!(gossip: Gossip.find(f+1), tag: Tag.find(f+1))
end

10.times do |f|
    gossip_tag_links = GossipTagLink.create!(gossip: Gossip.find(f+11), tag: Tag.find(f+1))
end