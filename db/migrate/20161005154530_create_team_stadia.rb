class CreateTeamStadia < ActiveRecord::Migration[5.0]
  def change
    create_table :team_stadia do |t|
      t.string :name

      t.timestamps
    end
  end
end
