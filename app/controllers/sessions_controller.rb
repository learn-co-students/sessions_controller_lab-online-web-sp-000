class SessionsController < ApplicationController 

    def new
    end
  
    def create

    #   explicit return called before method return, without return called explicitly
      return redirect_to login_path if !params[:name].present? #.present? returns value if ' ' or nil
    #   error: Render and/or redirect were called multiple times in this action. 
    #   Please note that you may only call render OR redirect, and at most once per action. 
    #   Also note that neither redirect nor render terminate execution of the action, 
    #   so if you want to exit an action after redirecting, 
    #   you need to do something like "redirect_to(...) and return".
      session[:name] = params[:name]
      redirect_to root_path
    end
  
    def destroy
      reset_session
    #   reset session vs removing user session.delete :user? session.clear?
      redirect_to root_path
      
    end
  end

#   before studying and refactoring basic if else flow

#   def new
#   end

#   def create
#     if session[:name].present?
#         redirect_to root_path
#     else
#       if params[:name].present?
#           session[:name] = params[:name] 
#           redirect_to root_path
#       else
#           redirect_to login_path
#       end
#     end
#   end

#   def destroy
#     if session[:name]
#       session.delete :name
#     else
#       redirect_to root_path
#     end
#   end

# end