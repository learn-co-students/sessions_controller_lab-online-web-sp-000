class SessionsController < ApplicationController
    def new

    end

    def create
        if params[:name].blank? # blank? is not a standard Ruby method but is added to all objects by Rails and returns true for nil, false, empty, or a whitespace string.
            redirect_to '/login'
        else
            session[:name] = params[:name]
            redirect_to '/'
        end
    end

    def destroy
        session.delete :name
    end

end