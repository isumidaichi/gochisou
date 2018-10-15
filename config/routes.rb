Rails.application.routes.draw do

  get '/' => 'posts#index', as: 'root'
  get '/host' => 'users#show'
  get '/join' => 'posts#join'
  get '/post/input' => 'posts#input', as: 'posts'
  get '/post/:id/join' => 'posts#join'
  get '/post/:id' => 'posts#show'
  get '/auth/:provider/callback' => 'users#create'

  post '/post/input' => 'posts#create'
  post '/post/:id/edit' => 'posts#edit'



  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
