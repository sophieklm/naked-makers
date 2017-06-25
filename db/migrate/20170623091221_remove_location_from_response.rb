class RemoveLocationFromResponse < ActiveRecord::Migration[5.1]
  def change
    remove_column :responses, :location
  end
end
