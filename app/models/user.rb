class User < ActiveRecord::Base
	validates :name, presence: true, length: { maximum: 50 }
	validates :email, presence: true
	validates :password, presence: true, length: { minimum: 6 }
	
	before_create :set_random_password
 	before_save :encrypt_password

	has_secure_password


	def authenticate(password)
    self.fish == BCrypt::Engine.hash_secret(password, self.salt)
  	end
	
	def User.new_remember_token
    SecureRandom.urlsafe_base64
  	end
  private
  
  # Automatically encrypt the passed in password (which is transient)
  # setting the user's salt and hash (fish), which are persistent.
  def encrypt_password
    unless password.blank?
      self.salt = BCrypt::Engine.generate_salt
      self.fish = BCrypt::Engine.hash_secret(password, self.salt)
    end
  end
  
  # Set a random password for new users (on create) if one is not
  # passed in (no user has a blank password). They can always reset
  # it using the password reset feature.
  def set_random_password
    if password.blank?
      password = password_confirmation = BCrypt::Engine.generate_salt
    end
  end

end