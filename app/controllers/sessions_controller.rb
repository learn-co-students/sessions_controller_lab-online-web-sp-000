class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name] == nil || params[:name].empty?
      redirect_to "/login"
    elsif session[:name] = params[:name]
      redirect_to "/"
    else
      redirect_to "/"
    end
  end

  def destroy
    if session[:name] = params[:name]
      session[:name].delete
    else
    end
  end
end
