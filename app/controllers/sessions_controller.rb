class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name] && !params[:name].empty?
      session[:name] = params[:name]
      redirect_to root_path
    else
      redirect_to login_path
    end
  end

  def destroy
    if name.nil? || name.empty?
      redirect_to login_path
    else
      session.delete :name
      redirect_to root_path
    end
  end
end
