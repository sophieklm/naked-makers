class CreateLocationLanguages < ActiveRecord::Migration[5.1]
  def change
    create_table :location_languages do |t|
      t.integer :location_id
      t.integer :language_id

      t.timestamps
    end
  end
end
