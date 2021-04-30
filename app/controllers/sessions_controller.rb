class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name] && !params[:name].empty?
      session[:name] = params[:name]
      redirect_to '/'
    elsif !params[:name] || params[:name].empty?
      redirect_to '/login'
    end
  end

  #homepage
  def hello
    @user = session[:name]
  end

  def destroy
    session.delete :name
  end

end
