class SessionsController < ApplicationController
  def new
  end

  def create
    if user_name_submitted_blank?
      redirect_to '/sessions/new' and return
    end

    login
    redirect_to root_path if logged_in?
  end

  def destroy
    logged_in? ? session.clear : return
  end

  private
  def login
    session[:name] = params[:name]
  end

  def logged_in?
    !!session[:name]
  end

  def user_name_submitted_blank?
    params[:name].nil? || params[:name].blank?
  end
end
