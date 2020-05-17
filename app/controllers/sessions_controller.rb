class SessionsController < ApplicationController

    def new
    end

    def create
        if !params[:name] || params[:name].empty?
            return redirect_to(controller: 'sessions', action: 'new')
        end

        session[:name] = params[:name]
        redirect_to controller: 'application', action: 'hello'
    end

    def destroy
        session[:name] = nil
        redirect_to controller: 'application', action: 'hello'
    end




end
