class Player < ApplicationRecord
  belongs_to :team
  belongs_to :stadium_weather
end
