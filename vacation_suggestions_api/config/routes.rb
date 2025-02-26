Rails.application.routes.draw do
  # Def route
  get '/vacations', to: 'vacations#index'
end
