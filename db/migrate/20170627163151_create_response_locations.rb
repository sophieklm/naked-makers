class CreateResponseLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :response_locations do |t|
      t.integer :location_id
      t.integer :response_id

      t.timestamps
    end
  end
end
