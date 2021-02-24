class SessionsController < ApplicationController
    def new
    end

    def create
        if params[:name].nil? || params[:name].empty?
            redirect_to login_path
        else
            session[:name] = params[:name]
            redirect_to root_path
        end
        # if session.has_key?("name")
        #     redirect_to root_path
        # elsif params[:name].nil? || params[:name].empty?
        #     redirect_to login_path
        # else
        #     session[:name] = params[:name]
        # end
    end

    def destroy
        session.delete :name
    end
end