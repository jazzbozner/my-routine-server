Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users do
        resources :routines 
        resources :workouts
      end
      resources :exercises
      # post '/login', to: 'auth#login'
      # get '/user_authorized', to: 'auth#user_authorized'
    end
  end
end
