class SessionsController < ApplicationController
  def new
    if session[:name]
    end
  end

  def create

    if params[:name].nil? || params[:name].blank?
      redirect_to "/login"

    elsif session[:name]
      redirect_to "/"

    else
      session[:name] =  params[:name]
      render "/application/hello"
    end
  end

  def destroy
    session.delete :name
    redirect_to :login
  end
end
