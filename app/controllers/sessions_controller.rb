class SessionsController < ApplicationController
  def new
  end

  def create
    return redirect_to sessions_new_url unless params[:name] && params[:name].length > 0

    session[:name] = params[:name]
    redirect_to '/'
  end

  def destroy
    session.delete :name
    redirect_to '/'
  end
end
