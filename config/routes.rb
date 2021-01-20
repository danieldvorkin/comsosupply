Rails.application.routes.draw do
  get 'user/show'
  namespace :admin do
      resources :users

      root to: "users#index"
    end
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'visitor#index'
  get '/admin', to: 'admin#index'
end
