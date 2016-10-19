class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :teams

  def teams
    Team.all
  end
end
