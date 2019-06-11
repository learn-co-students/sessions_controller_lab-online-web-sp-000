class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :hello

  def hello
    if session[:name]
      render "application/hello"
    else
      redirect_to controller: 'sessions', action: 'new'
    end
  end

end
