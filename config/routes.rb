Rails.application.routes.draw do
  root 'products#index'
   get 'login', to: 'sessions#new'
   post 'login', to: 'sessions#create'
  resources :users, only: [:new, :create]
  resources :products

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'products', to: 'products#index'
  # get '/products/new', to: 'products#new', as: 'new_product'
  # post '/products', to: 'products#create'
  # get '/products/:id', to: 'products#show', as: 'product'
  # get '/products/:id/edit', to: 'products#edit', as: 'edit_product'
  # patch '/products/:id', to: 'products#update'
  # delete '/products/:id', to: 'products#destroy'
end
