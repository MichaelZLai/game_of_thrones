class CreateHouses < ActiveRecord::Migration[5.0]
  def change
    create_table :houses do |t|
      t.string :name
      t.string :location
      t.boolean :great_house
      t.string :motto

      t.timestamps
    end
  end
end
