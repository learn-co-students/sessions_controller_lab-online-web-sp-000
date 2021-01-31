class SessionsController < ApplicationController
  def new
      # nothing to do here!
  end

  def create
    puts session[:name]
    if !session[:name].blank?
      redirect_to '/'
    elsif !params[:name].blank?
      session[:name] = params[:name]
      redirect_to '/'
    else
      redirect_to '/login'
    end

  end
  def destroy
    if !session[:name].blank?
      session.delete :name
    end
  end


end
