class User < ActiveRecord::Base

	# remember to catch any ActiveRecord::StatementInvalid exceptions that get 
	# raised if the user isn't saved due to duplicate emails
	before_save { self.email = email.downcase }

	validates :email, presence: true

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, 
    	format: { with: VALID_EMAIL_REGEX }, 
    	uniqueness: { case_sensitive: false }

    has_secure_password
    validates :password, length: { minimum: 6 }	
end
