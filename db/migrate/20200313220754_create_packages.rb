class CreatePackages < ActiveRecord::Migration[5.2]
  def change
    create_table :packages do |t|
      t.text :name
      t.integer :price

      t.timestamps
    end
  end
end
