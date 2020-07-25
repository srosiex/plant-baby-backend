class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|
      t.string :scientificName
      t.string :commonName
      t.integer :user_id
      t.integer :type_id

      t.timestamps
    end
  end
end
