class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :image_url
      t.string :url
      t.string :location
      t.decimal :lat, { precision: 10, scale: 6 }
      t.decimal :lng, { precision: 10, scale: 6 }
      t.integer :rating
      t.string :price
      t.boolean :has_wifi
      t.boolean :open_late

      t.timestamps
    end
  end
end
