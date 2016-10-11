class Team < ApplicationRecord
  has_many :player
  belongs_to :team_stadium, :foreign_key => "home_stadium_id"
end
