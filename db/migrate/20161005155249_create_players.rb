class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.integer :team_id
      t.string :name
      t.string :uniform_num
      t.date :birthday
      t.boolean :active

      t.timestamps
    end
  end
end
