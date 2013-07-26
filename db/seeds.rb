# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create([
	{ name: 'Tim Jones', email: 'tim@gmail.com', password: '12345', password_confirmation: '12345' }, 
	{ name: 'Mary Smith', email: 'mary@gmail.com', password: '12345', password_confirmation: '12345' }, 
	{ name: 'Frank Harrison', email: 'frank@gmail.com', password: '12345', password_confirmation: '12345' }
	])

Location.create([
	{ name: 'Party Spot in Italy', latitude: '43.186983', longitude: '10.604553', user_id: 1 },
	{ name: 'Porto Pollo. Great Beach', latitude: '41.192945', longitude: '9.320526', user_id: 1 },
	{ name: 'Fun beach in Croatia', latitude: '44.005904', longitude: '15.292969', user_id: 1 },
	{ name: 'Great wakeboarding spot', latitude: '43.832375', longitude: '15.985107', user_id: 2 },
	{ name: 'Borsch', latitude: '40.068219', longitude: '19.852295', user_id: 2 }
	])

Post.create([
	{ content: "Very cool.  I love Party Spot in Italy", location_id: 1, user_id: 1 },
	{ content: "Porto Pollo is cool", location_id: 2, user_id: 1 },
	{ content: "Part Spot in Italy has great parties", location_id: 1, user_id: 1 },
	{ content: "This beach in Croatia is great", location_id: 3, user_id: 2 },
	{ content: "I love Croatia.  Party on.", location_id: 3, user_id: 1 },
	{ content: "Dito on love Croatia.", location_id: 3, user_id: 3 },
	{ content: "Borsch.  That place sucks.", location_id: 5, user_id: 1 },
	{ content: "I haven't been to Borsh yet.  Cool?", location_id: 5, user_id: 2 },
	{ content: "wakeboarding?  In Croatia?", location_id: 4, user_id: 2 }
	])
