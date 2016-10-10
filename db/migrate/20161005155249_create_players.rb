class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.integer :team_id
      t.string :name
      t.string :uniform_num
      t.integer :birth_year
      t.integer :birth_month
      t.integer :birth_day
      t.boolean :active

      t.timestamps
    end
  end
end
