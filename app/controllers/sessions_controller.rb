class SessionsController < ApplicationController
  def new
  end

  def create
    if user_valid?
      session[:name] = params[:name]
      redirect_to '/'
    else
      redirect_to login_path
    end
  end

  def destroy
    session.delete :name
    redirect_to root_path
  end

  private

  def user_valid?
    !params[:name].nil? && params[:name] != ""
  end
end
