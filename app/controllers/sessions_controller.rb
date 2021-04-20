class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name] != nil && !params[:name].empty?
      if session[:name] = params[:name]
        redirect_to '/'
      end
    else
      redirect_to login_path
    end
  end

  def destroy
    session.delete :name
    redirect_to login_path
  end

end
