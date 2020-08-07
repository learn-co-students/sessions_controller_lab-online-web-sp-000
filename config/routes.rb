Rails.application.routes.draw do
  #get 'sessions/new'

  # get “/login”, to: “sessions#new”
  # post “/login”, to: “sessions#create”

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#hello'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
end


#The user GETs /login
# The user enters their username. There is no password.
# The user submits the form, POSTing to /login.
# In the create action of the SessionsController we set a cookie on the user's browser by writing their username into the session hash.
# Thereafter, the user is logged in. session[:username] will hold their username.
