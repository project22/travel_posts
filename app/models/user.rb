class User < ActiveRecord::Base
	validates :name, presence: true, length: { maximum: 50 }
	validates :email, presence: true

	has_secure_password
	 has_many :locations
end
