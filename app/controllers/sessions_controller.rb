class SessionsController < ApplicationController
  def new
  end

  def create
    # redirects to login page in :name is nil

    if params[:name] == "" || params[:name].nil?
      redirect_to login_url
    else
      session[:name] = params[:name]
      redirect_to "/"
    end
  end

  def destroy
    session.delete :name
  end
end
