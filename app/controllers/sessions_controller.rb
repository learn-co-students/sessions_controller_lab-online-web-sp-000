class SessionsController < ApplicationController
    
    def index
    end


    def new
     
    end

    def create
        if params[:name] != nil
            if  params[:name].empty?  
                 params[:name]
                redirect_to '/login'
              
            else
                 params[:name]

                session[:name] = params[:name]
                redirect_to '/'
            end
        else
           params[:name]  
             redirect_to '/login'
        end
      
    end
    

    def destroy
        session.clear
    end
end