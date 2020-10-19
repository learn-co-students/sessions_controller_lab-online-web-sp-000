class SessionsController < ApplicationController 
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  def new 

  end

  def create
    if params[:name].nil? || params[:name] == ""
      redirect_to login_url
    else 
      session[:name] = params[:name]
      redirect_to "/"
    end
  end

  def destroy 
    session.delete :name
  end
  
end