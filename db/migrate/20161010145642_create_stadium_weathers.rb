class CreateStadiumWeathers < ActiveRecord::Migration[5.0]
  def change
    create_table :stadium_weathers, id: false do |t|
      t.integer :home_stadium_id
      t.integer :month
      t.integer :day
      t.string :weather_name
      t.string :icon

      t.timestamps
    end
    add_index :stadium_weathers, [:home_stadium_id, :month, :day], :unique => true
  end
end
