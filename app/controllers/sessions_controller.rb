class SessionsController < ApplicationController
  def new
  end

  def create
    if session[:name].nil?
      if params[:name] && !params[:name].empty?
        session[:name] = params[:name]
        redirect_to root_path
      else
        redirect_to login_path
      end
    else
      redirect_to root_path
    end
  end

  def destroy
    session[:name].nil? ? nil : session.delete(:name)
  end
end
