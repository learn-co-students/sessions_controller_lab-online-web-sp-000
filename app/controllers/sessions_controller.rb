class SessionsController<ApplicationController

def new

end

def create
    user=params[:name]
    if user.blank?   
        redirect_to "/login"
    elsif user
        session[:name]=params[:name]
        redirect_to "/"
    end
end

def destroy
    session.delete :name
end


end

#user.nil? || user.blank?