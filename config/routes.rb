# frozen_string_literal: true

Rails.application.routes.draw do
  root             'static_pages#home'
  get 'add'        => 'products#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  get 'cart'       => 'products#cart'
  resources :users
  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
