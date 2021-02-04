require 'pry'
class SessionsController < ApplicationController
  
  def new
    
  end
  
  def create
    @name = params[:name]
    if !@name || @name == ""
      redirect_to controller: 'sessions', action: 'new'
    else
      session[:name] = @name
      redirect_to controller: 'application', action: 'hello'
    end
  end
  
  def destroy
    session.destroy
    redirect_to controller: 'sessions', action: 'new'
  end
  
end