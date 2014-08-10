class User < ActiveRecord::Base

	

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(?:\.[a-z\d\-]+)*\.[a-z]+\z/i

    validates :email, presence: true, 
    	format: { with: VALID_EMAIL_REGEX }, 
    	uniqueness: { case_sensitive: false }

    # remember to catch any ActiveRecord::StatementInvalid exceptions that get 
	# raised if the user isn't saved due to duplicate emails
	before_save { self.email = email.downcase }

    has_secure_password

    validates :password, length: { minimum: 6 }	
end
