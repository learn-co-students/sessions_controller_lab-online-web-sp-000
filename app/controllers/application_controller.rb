class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def hello
    redirect_to "/login" if !logged_in?
    #redirect_to controller: "sessions", action: "new" if !logged_in?
  end
end
