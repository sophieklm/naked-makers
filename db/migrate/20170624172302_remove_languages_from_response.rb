class RemoveLanguagesFromResponse < ActiveRecord::Migration[5.1]
  def change
    remove_column :responses, :languages
  end
end
