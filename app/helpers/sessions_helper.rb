module SessionsHelper

  def log_in?
    !!session[:username]
  end
end
