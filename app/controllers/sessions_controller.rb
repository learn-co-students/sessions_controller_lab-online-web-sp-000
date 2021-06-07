class SessionsController < ApplicationController 

  def new
  end

  def create
    
    if session[:name].present?
        redirect_to root_path
    else
      if params[:name] && params[:name].present?
          session[:name] = params[:name] 
          redirect_to root_path
      else
          redirect_to login_path
      end
    end
  end

  def destroy
    if session[:name]
      session.clear
    else
      redirect_to root_path
    end
  end

end