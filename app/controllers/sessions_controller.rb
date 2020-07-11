class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name]
      session[:name] = params[:name]
      if session[:name].empty?
        redirect_to '/login'
      else
        redirect_to '/'
      end
    else
      redirect_to '/login' 
    end
  end

  def destroy
    session.delete :name 
  end
end
