class SessionsController < ApplicationController
  def new
  end

  def create 
    # byebug
    
    if name_field_empty?
      redirect_to '/login'
    else    
      set_session 
      redirect_to '/'
    end 
  end 

  def destroy 
    session.delete :name
  end 

  private 

  def name_field_empty? 
    name = params[:name]
    name.nil? || name == ''
  end 

  def set_session 
    session[:name] = params[:name]
  end 
end
