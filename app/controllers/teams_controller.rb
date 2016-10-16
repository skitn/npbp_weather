class TeamsController < ApplicationController
  def show
    @players = Player.includes(:stadium_weather).where(:team_id => params[:id], :active => true)
  end
end
