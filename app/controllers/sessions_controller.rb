class SessionsController < ApplicationController
  def new
    render :hello
  end

  def create
    unless params[:name] == "" || params[:name] == nil
      session[:name] = params[:name]
      redirect_to '/'
    else
      redirect_to '/login'
    end
  end

  def destroy
    session[:name] = nil
  end
end
