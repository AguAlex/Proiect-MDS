Rails.application.routes.draw do
  resources :packages
  resources :properties_facilities
  resources :rooms
  resources :properties
  resources :transportations
  resources :facilities
  resources :cities
  resources :countries, only: [:index, :show, :create, :update, :destroy]
  get "countries_index", to: "countries#index"
  resources :users
  resources :vacations
end
