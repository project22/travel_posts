class User < ActiveRecord::Base
	validates :name, presence: true, length: { maximum: 50 }
	validates :email, presence: true
	validates :password, length: { minimum: 6 }


	has_secure_password
	 has_many :locations
end
