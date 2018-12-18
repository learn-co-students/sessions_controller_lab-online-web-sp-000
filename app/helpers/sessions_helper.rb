module SessionsHelper

  def session_name
    session[:name]
  end

  def is_logged_in
    if session[:name].present?
      true
    else
      false
    end
  end

end
