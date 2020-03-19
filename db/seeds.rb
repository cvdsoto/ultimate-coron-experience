User.destroy_all
u1 = User.create :email => 'admin@uce.com.ph', :password => 'chicken', :admin => true
u2 = User.create :email => 'kim@uce.com.ph', :password => 'chicken'
u3 = User.create :email => 'thea@uce.com.ph', :password => 'chicken'

Package.destroy_all
p1 = Package.create :name => 'Town Tour', :price => 5500, :time => 'Morning'
p2 = Package.create :name => 'Island Hopping Tour', :price => 7450, :time => 'Afternoon'

Place.destroy_all
l1 = Place.create :name => 'Mount Tapyas View Deck', :location => 'Mount Tapyas', :latitude => 12.004846, :longitude => 120.2047511
l2 = Place.create :name => 'Cashew Factory', :location => 'L. Escarda’S Coron Harvest' , :latitude => 11.9930055, :longitude => 120.2112555
l3 = Place.create :name => 'Twin Lagoon', :location => 'Twin Lagoon, Coron', :latitude => 11.9479543, :longitude => 120.2107536
l4 = Place.create :name => 'Kayangan Lake', :location => 'Kayangan Lake, Coron', :latitude => 11.959335, :longitude => 120.2261459

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
