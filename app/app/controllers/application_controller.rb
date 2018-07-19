class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :charge_session
  protected
  def authenticate_user
    unless charge_session
        redirect_to '/login'
        return false
      else
        return true
      end
  end

  def charge_session
      unless session[:user_id]
    		return false
    	else
            @current_user = User.find session[:user_id]
    		return true
    	end
  end

  def compagny_user
      unless @current_user && @current_user[:compagny_id]
          redirect_to '/'
          return false
      else
          @current_user[:compagny] = Compagny.find @current_user[:compagny_id]
          return true
      end
  end

  #This method for prevent user to access Signup & Login Page without logout
  def save_login_state
    if session[:user_id]
            redirect_to :controller => 'sessions', :action => 'home'
      return false
    else
      return true
    end
  end
end
