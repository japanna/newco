module SessionsHelper

	def sign_in(user)
		# create a new token
	    remember_token = User.new_remember_token
	    # place the raw token in the browser cookies
	    cookies.permanent[:remember_token] = remember_token
	    # save the hashed token to the database
	    user.update_attribute(:remember_token, User.digest(remember_token))
	    # set the current user equal to the given user
	    self.current_user = user
  	end

  	def signed_in?
      !current_user.nil?
    end

  	def current_user=(user)
    	@current_user = user
  	end

  	def current_user
      remember_token = User.digest(cookies[:remember_token])
      @current_user ||= User.find_by(remember_token: remember_token)
    end

    def sign_out
    # change the user’s remember token in the database (in case it has been stolen)	
    current_user.update_attribute(:remember_token,
                                  User.digest(User.new_remember_token))
    # remove the remember token from the session
    cookies.delete(:remember_token)
    # in case we ever want to use sign_out without a redirect
    self.current_user = nil
  end

end
