User.destroy_all
u1 = User.create :email => 'coron@uce.com.ph', :password => 'chicken', :admin => true
u2 = User.create :email => 'kim@uce.com.ph', :password => 'chicken'
u3 = User.create :email => 'thea@uce.com.ph', :password => 'chicken'

Package.destroy_all
p1 = Package.create :name => 'Coron Loop', :price => 5500
p2 = Package.create :name => 'Escapade', :price => 7450
p3 = Package.create :name => 'Adventure', :price => 7450
p4 = Package.create :name => 'Calauit', :price => 13300

Place.destroy_all
l1 = Place.create :name => 'Kayangan Lake', :location => 'Banauang Daan, Coron'
l2 = Place.create :name => 'Barracuda Lake', :location => 'Banauang Daan, Coron'
l3 = Place.create :name => 'Twin Lagoon', :location => 'Banauang Daan, Coron'
l4 = Place.create :name => 'Malcapuya Island', :location => 'Culion'
l5 = Place.create :name => 'Banana Island', :location => 'Bulalacao'
l6 = Place.create :name => 'Lusong Coral Garden', :location => 'Lusong Island'
l7 = Place.create :name => 'Pass Island', :location => 'Pass Island'
l8 = Place.create :name => 'Calauit Safari', :location => 'Calauit'
l9 = Place.create :name => 'Black Island', :location => 'Black Island'

Itinerary.destroy_all
i1 = Itinerary.create :date => DateTime.new(2020, 4, 15)
i2 = Itinerary.create :date => DateTime.new(2020, 4, 16)
i3 = Itinerary.create :date => DateTime.new(2020, 5, 28)

# Associations #################################################################
puts "----Packages and Places"
p1.places << l1 << l2 << l3
p2.places << l4 << l5
p3.places << l6 << l7
p4.places << l8 << l9

puts "----Packages and Itinerary"
i1.packages << p1 << p2
i2.packages << p2 << p3
i3.packages << p3 << p4

puts "----Itinerary and Users"
u2.itineraries << i1 << i2
u3.itineraries << i2 << i3
