Rails.application.routes.draw do

get '/users', to: 'users#index'
get '/users/:id', to: 'users#show'
post '/users', to: 'users#create'
delete '/users/:id', to: 'users#destroy'
patch '/users/:id', to: 'users#update'

get '/favorites', to: 'favorites#index'
get '/favorites/:id', to: 'favorites#show'
post '/favorites', to: 'favorites#create'
delete '/favorites/:id', to: 'favorites#destroy'
patch '/favorites/:id', to: 'favorites#update'

get '/sneakers', to: 'sneakers#index'
get '/sneakers/:id', to: 'sneakers#show'
post '/sneakers', to: 'sneakers#create'
delete '/sneakers/:id', to: 'sneakers#destroy'
patch '/sneakers/:id', to: 'sneakers#update'



end
