class SessionsController < ApplicationController
  def new
  end
  def create
    if params[:name] == nil || params[:name] == ''
      redirect_to '/login'
    elsif params[:name] != nil
      session[:name] = params[:name]
      redirect_to '/'
    else
      session[:name] = params[:name]
    end
  end
  def destroy
    session[:name] = nil
  end

end
