class SessionsController < ApplicationController
  before_action :screened_name
  skip_before_action :screened_name, only: [:destroy]
  
  def new; end

  def create
    session[:name] = params.require(:name)
    redirect_to '/'
  end

  def destroy
    session.clear
  end

  private

  def screened_name
    @name = params[:name]
    redirect_to(controller: 'sessions', action: 'new') if @name.nil? || @name&.empty?
  end
end
