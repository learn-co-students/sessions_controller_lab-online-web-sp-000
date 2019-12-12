class SessionsController < ApplicationController
  def new

  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to '/login'
    else
      session[:name] = params[:name] #creates username, saves it
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name # deletes username cookie
  end

end
