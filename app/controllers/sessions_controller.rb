class SessionsController < ApplicationController
  def new
    #get

  end

  def create
    #post
    if params[:name] && params[:name].present?
      session[:name] = params[:name]
      redirect_to root_path
    else
      redirect_to login_path
    end
  end

  def destroy
    #post
    session.delete :name
  end
end
