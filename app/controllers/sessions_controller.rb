class SessionsController < ActionController::Base


def new

end

def create
    #binding.pry
    if params[:name] == nil || params[:name] == ""
        redirect_to 
    # elsif session[:name] == params[:name]
    #     redirect_to "/"
    else
        session[:name] = params[:name]
        redirect_to root_path
    end
end

def destroy
    session.delete :name
end


end