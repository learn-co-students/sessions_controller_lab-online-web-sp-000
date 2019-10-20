Rails.application.routes.draw do
  
<<<<<<< HEAD
  
=======
>>>>>>> fc518f99d6cf4e97a70bca77dae606e0b5353c58
  get 'sessions/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#hello'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  
end