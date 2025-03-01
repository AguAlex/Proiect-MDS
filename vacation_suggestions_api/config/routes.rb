Rails.application.routes.draw do
  resources :packages
  resources :properties_facilities
  resources :rooms
  resources :properties
  resources :transportations
  resources :facilities
  resources :cities
  resources :countries
  resources :users
  resources :vacations
end
