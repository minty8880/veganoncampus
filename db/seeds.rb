# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# user = CreateAdminService.new.call
# puts 'CREATED ADMIN USER: ' << user.email
# Environment variables (ENV['...']) can be set in the file .env file.

if Rails.env.development?
  6.times   { Fabricate(:institution) }
  10.times  { Fabricate(:campus) }
  20.times  { Fabricate(:outlet) }
  100.times { Fabricate(:food) }
end

require Rails.root.join('db', 'seeds', 'unsw.rb')
require Rails.root.join('db', 'seeds', 'uts.rb')
require Rails.root.join('db', 'seeds', 'all.rb')
