class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def hello; end



  def current_user
    session[:name]
  end

  def auth_required
    # binding.pry
    redirect_to controller: 'sessions', action: 'new' if current_user.nil? || current_user&.empty?
  end

end