Rails.application.routes.draw do
  devise_for :users, :controller => { registrations: 'registrations' }
  root "posts#index"

  resources :posts, only: [:new, :index, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
