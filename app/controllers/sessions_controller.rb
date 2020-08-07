class SessionsController < ApplicationController
  def new
  end

#log in flow
  def create
    if params[:name] == "" || params[:name] == nil
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

#log out flow
  def destroy
    if session[:name]
      session.delete :name
    end
    redirect_to '/'
  end
end

# rails generate controller Sessions new --no-helper --no-assets --no-test-framework --skip-routes --skip
