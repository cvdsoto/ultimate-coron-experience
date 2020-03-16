class AddTimeColumnToPackage < ActiveRecord::Migration[5.2]
  def change
    add_column :packages, :time, :text
  end
end
