class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name] && params[:name].size > 0
    session[:name] = params[:name].strip
      redirect_to '/'
    else
      redirect_to '/sessions/new'
    end
  end

  def destroy
     session.delete :name
  end
end
