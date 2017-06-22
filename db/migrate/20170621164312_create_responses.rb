class CreateResponses < ActiveRecord::Migration[5.1]
  def change
    create_table :responses do |t|
      t.text :languages, array:true, default:[]
      t.text :location

      t.timestamps
    end
  end
end
