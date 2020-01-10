class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :image_url
      t.string :url
      t.string :location
      t.integer :lat
      t.integer :lng
      t.integer :rating
      t.string :price
      t.boolean :has_wifi
      t.boolean :open_late

      t.timestamps
    end
  end
end
