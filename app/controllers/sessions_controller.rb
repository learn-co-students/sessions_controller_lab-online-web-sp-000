class SessionsController < ApplicationController
  def new
  end

  def create
    if !params[:name] || params[:name] == ""
      redirect_to(controller: 'sessions', action: 'new') and return
    end
    session[:name] = params[:name]
    redirect_to controller: 'application', action: 'hello'
  end

  def destroy
    session.delete :name
    redirect_to controller: 'application', action: 'hello'
  end
end