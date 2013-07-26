class CreateItemStorages < ActiveRecord::Migration
  def change
    create_table :item_storages do |t|
      t.date :time

      t.timestamps
    end
  end
end
