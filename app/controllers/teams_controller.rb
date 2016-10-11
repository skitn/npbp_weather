class TeamsController < ApplicationController
  def show
    @players = Player.where(:team_id => params[:id], :active => true)
  end
end
