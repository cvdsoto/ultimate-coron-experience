class CreatePackagesPlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :packages_places, :id => false do |t|
      t.integer :package_id
      t.integer :place_id
    end
  end
end
