class SessionsController < ApplicationController
  def new
  end

  def create
    if helpers.logged_in?
      redirect_to '/'
    else
      if params[:name].nil? || params[:name] == ""
        redirect_to controller: 'sessions', action: 'new'
      else
        session[:name] = params[:name]
        redirect_to '/'
      end
    end
  end

  def destroy
    session.clear
  end
end
