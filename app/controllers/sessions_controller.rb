class SessionsController < ApplicationController
  def new
  end

  def destroy
    session.delete :name
    redirect_to '/sessions/login'
  end

  def create
    #binding.pry
    if session[:name]
      redirect_to '/'
    elsif !(params[:name].nil? || params[:name].blank?)
      session[:name]=params[:name]
      redirect_to '/'
    else
      redirect_to '/sessions/new'
    end
  end
end
