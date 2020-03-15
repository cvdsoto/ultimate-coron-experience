class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.text :name
      t.text :location
      t.text :image
      t.integer :package_id

      t.timestamps
    end
  end
end
