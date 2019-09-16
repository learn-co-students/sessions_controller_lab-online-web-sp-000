class SessionsController < ApplicationController
  
  def new
  end
  
  def create
    if params[:name] == nil
      redirect_to '/sessions/new'
    elsif params[:name] == ""
      redirect_to '/sessions/new'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end
  
  def destroy
    if session[:name] = params[:name]
      session.delete :name
    end
  end
end
