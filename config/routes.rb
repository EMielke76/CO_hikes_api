Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      get '/hikes', to: 'hikes#index'
      post '/hikes', to: 'hikes#create'
    end
  end 
end
