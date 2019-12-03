class SessionsController < ActionController::Base
  
	def new
		# byebug
	end

	def create
		# byebug
		if params[:name] != '' && params[:name] != nil
			session[:name] = params[:name]
			redirect_to home_path
		else
			redirect_to login_path
		end
	end

	def destroy
		if session[:name] != nil
			session.delete :name
		end
		redirect_to home_path
	end

end