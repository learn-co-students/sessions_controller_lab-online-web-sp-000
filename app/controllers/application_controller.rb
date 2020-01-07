class ApplicationController < ActionController::Base
  helper_method :named_session?
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def named_session?
    !(params[:name].nil? || params[:name]=="")
  end
end