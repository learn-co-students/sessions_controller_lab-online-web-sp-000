class SessionsController < ApplicationController
  def hello
    if session[:name]
      @user = session[:name]
    else
      redirect_to '/new'
    end
  end

  def new

  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to '/sessions/new'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    if session[:name].nil?
      redirect_to '/'
    else
      session.delete :name
    end
  end
end
