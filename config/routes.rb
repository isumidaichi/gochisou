Rails.application.routes.draw do

  get '/' => 'posts#index'
  get '/post/input' => 'posts#input'
  get '/post/confirm/:id' => 'posts#confirm'
  get '/post/:id' => 'posts#show'
  get '/host/:id' => 'posts#host'

  get '/user/:id' => 'users#show'
  # get '/authenticate' => 'users#authenticate'

  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
