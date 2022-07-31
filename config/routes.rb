Rails.application.routes.draw do
  get 'users' => 'users#index'
  get 'home/about' => 'homes#about', as: "about"
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'homes#top'
  resources :books
  resources :users
end
