Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#hello'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
end

# Prefix Verb URI Pattern       Controller#Action
#   root GET  /                 application#hello
#  login GET  /login(.:format)  sessions#new
#        POST /login(.:format)  sessions#create
# logout POST /logout(.:format) sessions#destroy
