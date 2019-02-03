class SessionsController < ApplicationController
  def new
  end

  def create
    name = session[:name] = params[:name]
    if name.nil? || name == ""
      redirect_to '/login'
    else
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/login'
  end
end
