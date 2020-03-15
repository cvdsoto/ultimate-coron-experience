class CreateItinerariesPackages < ActiveRecord::Migration[5.2]
  def change
    create_table :itineraries_packages, :id => false do |t|
      t.integer :itinerary_id
      t.integer :package_id
    end
  end
end
