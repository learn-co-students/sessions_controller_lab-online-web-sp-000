class SessionsController < ApplicationController
  
  def create
    session[:name] = params[:name]
    if !session[:name] || session[:name] == ""
      redirect_to '/login'
    else
      redirect_to '/'
    end
  end

  def new
    
  end

  def destroy
    session.delete :name
  end

end