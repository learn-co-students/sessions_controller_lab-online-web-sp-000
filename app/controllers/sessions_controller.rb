class SessionsController < ApplicationController

  def new
  end

  def create
    if session[:name] = params[:name]
      redirect_to "/"
    elsif session[:name].empty?
      redirect_to '/login'
    else
      redirect_to '/login'
    end
  end

  def destroy
  end
end
