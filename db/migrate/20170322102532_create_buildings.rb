class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|

      t.string :building_name
      t.integer :building_story
      t.string :building_address

      t.timestamps null: false
    end
  end
end
