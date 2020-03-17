User.destroy_all
u1 = User.create :email => 'admin@uce.com.ph', :password => 'chicken', :admin => true
u2 = User.create :email => 'kim@uce.com.ph', :password => 'chicken'
u3 = User.create :email => 'thea@uce.com.ph', :password => 'chicken'

Package.destroy_all
p1 = Package.create :name => 'Town Tour', :price => 5500, :time => 'Morning'
p2 = Package.create :name => 'Island Hopping Tour', :price => 7450, :time => 'Afternoon'

Place.destroy_all
l1 = Place.create :name => 'Mount Tapyas View Deck', :location => 'Coron Town Proper'
l2 = Place.create :name => 'Cashew Factory', :location => 'Coron Town Proper'
l3 = Place.create :name => 'Twin Lagoon', :location => 'Banauang Daan, Coron'
l4 = Place.create :name => 'Kayangan Lake', :location => 'Banauang Daan, Coron'

Itinerary.destroy_all
i1 = Itinerary.create :date => DateTime.new(2020, 4, 15)
i2 = Itinerary.create :date => DateTime.new(2020, 4, 16)

# Associations #################################################################
puts "----Packages and Places"
p1.places << l1 << l2
p2.places << l3 << l4


puts "----Packages and Itinerary"
i1.packages << p1 << p2
i2.packages << p2

puts "----Itinerary and Users"
u2.itineraries << i2
u3.itineraries << i1
