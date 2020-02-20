class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name] && params[:name] != ""
      if session[:name] then
        redirect_to '/'
      else
        session[:name] = params[:name] 
        redirect_to '/'
      end   
    else
      redirect_to '/sessions/new'
    end
  end

  def destroy
    session.delete :name
  end
end
