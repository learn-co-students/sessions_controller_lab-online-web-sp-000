class SessionsController < ApplicationController

  #get '/login' => 'sessions#new'
  def new
  end

  #post '/login' => 'sessions#create'
  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to "/login"
    else
      session[:name] = params[:name]
      redirect_to "/"
    end
  end

  #post '/logout' => 'sessions#destroy'
  def destroy
    session.delete(:name) if session[:name]
    redirect_to "/login"
  end

end
