class CreateTeamStadia < ActiveRecord::Migration[5.0]
  def change
    create_table :team_stadia do |t|
      t.string :name
      t.decimal :lat, :precision => 9, :scale => 6
      t.decimal :lon, :precision => 9, :scale => 6
      t.timestamps
    end
  end
end
