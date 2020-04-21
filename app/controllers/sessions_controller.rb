class SessionsController < ApplicationController
	def new
		
	end

	def create
		if !params[:name] || params[:name].empty?
			redirect_to action: "new"
		else
			if session[:name]
				redirect_to "/"
			else
				session[:name] = params[:name]
				redirect_to "/"
			end
		end
	end

	def destroy
		if session[:name]
			session.delete :name
			redirect_to "new"
		end
	end
end