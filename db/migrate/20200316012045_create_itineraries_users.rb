class CreateItinerariesUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :itineraries_users, :id => false do |t|
      t.integer :itinerary_id
      t.integer :user_id
    end
  end
end
