class SessionsController < ApplicationController
    def new
    end

    def create
        if name_params
          session[:name] = name_params
          redirect_to root_path
        else
          redirect_to login_path
        end
      end

    def destroy
        session.delete :name
        redirect_to login_path
    end 
end
