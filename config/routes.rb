Rails.application.routes.draw do
  get 'artworks/index'

  get 'artworks/create'

  get 'artworks/show'

  get 'artworks/update'

  get 'artworks/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :users

  get '/users/', to: 'users#index'
  post '/users/', to: 'users#create'
  # get '/users/new', to: 'users#new'
  # get '/users/:id/edit', to: 'users#edit'
  get '/users/:id', to: 'users#show'
  patch '/users/:id', to: 'users#update'
  put '/users/:id', to: 'users#update'
  delete '/users/:id', to: 'users#destroy'

  resources :artworks, only: %i(index create show update destroy)

end
