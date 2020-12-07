class SessionsController < ApplicationController
  def new
  end

  def create
    @name = params[:name]
    if @name == nil || @name == ""
      redirect_to '/login'
    else
      session[:name] = @name
       "hi, #{@name}"
       redirect_to '/'
    end
  end

  def destroy
    session.delete :name
  end
end
