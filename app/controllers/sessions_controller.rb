class SessionsController < ApplicationController
  def new
  end

  def create
    session[:name] = params[:name]
    if params[:name].blank? && session[:name].nil?
      redirect_to '/'
    else
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name
  end
end
