class SessionsController < ApplicationController

  def new
  end

  def create
    session[:name] = params[:name]
    if !session[:name].blank?
      redirect_to root_path
    else
      redirect_to controller: 'sessions', action: 'new'
    end
  end

  def destroy
    session.delete :name if session[:name]
  end
end
