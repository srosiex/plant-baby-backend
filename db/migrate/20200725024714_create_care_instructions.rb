class CreateCareInstructions < ActiveRecord::Migration[6.0]
  def change
    create_table :care_instructions do |t|
      t.integer :waterAmt
      t.string :instructions
      t.integer :plant_id

      t.timestamps
    end
  end
end
