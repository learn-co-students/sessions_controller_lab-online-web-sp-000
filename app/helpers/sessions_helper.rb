module SessionsHelper
    def logged_in? 
        !!session[:name]
    end

    def user
        session[:name] 
    end
end
