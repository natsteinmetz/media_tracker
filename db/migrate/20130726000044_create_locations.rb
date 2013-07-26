class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :type
      t.string :room
      t.text :description

      t.timestamps
    end
  end
end
