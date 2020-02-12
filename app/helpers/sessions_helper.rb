module SessionsHelper

  def valid_name
    params[:name] and params[:name] != ""
  end

end
