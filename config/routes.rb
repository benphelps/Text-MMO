TextMMMO::Application.routes.draw do
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  devise_for :users
  match '/home' => 'home#index'
  match '/home/what' => 'home#what'
  resources :character
  resources :armor
  root :to => 'home#index'
end
