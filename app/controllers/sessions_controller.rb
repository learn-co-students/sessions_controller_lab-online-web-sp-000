class SessionsController < ApplicationController
  
  def new
    
  end
 
  def create
    unless params[:name] && !params[:name].empty?
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end
  
  def destroy
    session.destroy
    redirect_to '/'
  end

end