class SessionsController < ApplicationController
	skip_before_filter :verify_authenticity_token, :only => :login_attempt
	before_filter :authenticate_user, :except => [:index, :login, :login_attempt, :logout, :new]
	before_filter :save_login_state, :only => [:index, :login, :login_attempt]

	def home
		if @current_user[:compagny_id]
			@compagny = Compagny.find(@current_user[:compagny_id])
		end

	end

	def profile
		#Profile Page
	end

	def setting
		#Setting Page
	end

	def login
		#Login Form
	end

	def login_attempt
		authorized_user = User.authenticate(params[:name_or_email],params[:password])
		if authorized_user
			session[:user_id] = authorized_user.id
			flash[:notice] = "Wow Welcome again, you logged in as #{authorized_user.name}"
			p "==============================="
			redirect_to :controller=> 'sessions' ,:action => 'home'


		else
			p "==============false==============="
			flash[:notice] = "Invalid name or Password"
        	flash[:color]= "invalid"
			render "login"
		end
	end

	def destroy
		@current_user = nil
		redirect_to '/'
	end

	def logout
		session[:user_id] = nil
		redirect_to :action => 'login'
	end

end
