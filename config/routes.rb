Rails.application.routes.draw do
  get 'users/show'
  get 'users/edit'
  get 'homes/about' => 'homes#about', as: "about"
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'homes#top'
  resources :books, only: [:new, :index, :show]
end
