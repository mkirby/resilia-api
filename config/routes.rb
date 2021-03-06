Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  namespace :api do
    namespace :v1 do
      resources :notifications, only: [:index, :show]
      resources :users, only: [:index, :show]
      get '/messages', to: 'users#notifications'
    end
  end
  
end
