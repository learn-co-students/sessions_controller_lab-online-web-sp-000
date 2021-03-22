class SessionsController < ApplicationController
  def new
    
  end

  def create
    if session[:name]
      redirect_to "/"
    elsif params[:name] == nil || params[:name] == ""
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to "/"

    end
  end

  def destroy
    session.destroy
  end
end
