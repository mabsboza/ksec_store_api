Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/products', to: 'products#index'
      get '/categories', to: 'categories#index'
      post '/products', to: 'products#create'
      get '/products/:id', to: 'products#show'
      patch '/products/:id', to: 'products#update'
      delete '/products/:id', to: 'products#destroy'
    end
  end
end
