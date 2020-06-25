class SessionsController < ApplicationController
  def new
    redirect_to root_path if logged_in?
  end

  def create 
    if logged_in?
      redirect_to root_path
    elsif params[:name] == nil || params[:name].empty?
      redirect_to login_path 
    else  
      session[:name] = params[:name]
      redirect_to root_path
    end 
  end 

  def destroy 
    # session[:name] = nil if logged_in?
    session.delete :name 
    redirect_to root_path
  end 
end
