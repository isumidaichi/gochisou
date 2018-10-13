Rails.application.routes.draw do

  get '/' => 'posts#index', as: 'root'
  get '/host' => 'users#show'
  get '/post/input' => 'posts#input'
  get '/post/:id' => 'posts#show'
  get '/post/:id' => 'posts#host'
  get '/auth/:provider/callback' => 'users#create'

  post '/post/:id/edit' => 'posts#edit'



  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
