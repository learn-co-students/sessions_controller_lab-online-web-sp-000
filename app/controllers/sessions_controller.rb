class SessionsController < ApplicationController
  def new
  end

  def create
    name = params[:name]
    if session[:name]
      redirect_to "/"
    elsif name && name != ""
      session[:name] = name
      redirect_to "/"
    else
      redirect_to "/login"
    end
  end

  def destroy
    if session[:name]
      session[:name] = nil
    end
  end
end
