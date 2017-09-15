Rails.application.routes.draw do
  resources :categories
  resources :requests
  resources :conversations do
    resources :messages
  end
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root 'pages#home'

  get 'about' => 'pages#about'

  get 'partners' => 'pages#partners'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
