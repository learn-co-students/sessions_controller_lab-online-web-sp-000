class SessionsController < ApplicationController
  def new
  end

  def create 
  #  binding.pry
    if !params[:name] || params[:name].empty?
      redirect_to(controller: 'sessions', action: 'new')
    else 
    #  binding.pry
      session[:name] = params[:name]
      redirect_to '/'
    end
  end 

  def destroy 
    session.delete :name
  end 
end
