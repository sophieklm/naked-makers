class CreateResponseLanguages < ActiveRecord::Migration[5.1]
  def change
    create_table :response_languages do |t|
      t.integer :response_id
      t.integer :language_id

      t.timestamps
    end
  end
end
