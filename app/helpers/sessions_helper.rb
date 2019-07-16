module SessionsHelper
  def current_user
    @user ||= session[:name] if session[:name]
  end

  def logged_in?
    !!current_user
  end
end
