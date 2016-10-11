Rails.application.routes.draw do
  get 'home/index'
  get 'teams/show'
  root :to => 'home#index'
end
