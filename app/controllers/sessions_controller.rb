class SessionsController < ApplicationController
  def new

  end

  def create
    name = params[:name]
    if name == nil || name == ""
        redirect_to "/sessions/new"
    else
      session[:name] = params[:name]
      redirect_to '/'

    end
  end

  def destroy
    session.delete :name
  end

end
