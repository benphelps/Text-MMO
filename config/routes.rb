TextMMMO::Application.routes.draw do
  devise_for :admins
  devise_for :users
  match '/home' => 'home#index'
  match '/home/what' => 'home#what'
  resources :characters
  resources :armors
  resource :studio
  root :to => 'home#index'
end
