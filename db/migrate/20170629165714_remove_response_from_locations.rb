class RemoveResponseFromLocations < ActiveRecord::Migration[5.1]
  def change
    remove_reference :locations, :response, foreign_key: true
  end
end
