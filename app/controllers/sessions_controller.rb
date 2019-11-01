class SessionsController < ApplicationController
  def new
  end
  def create
    return redirect_to sessions_new_path if params[:name].nil?
    return redirect_to sessions_new_path if params[:name].empty?
    session[:name] = params[:name]
    redirect_to '/'
  end
  def destroy
    session.delete :name
  end
end
