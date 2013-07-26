class User < ActiveRecord::Base
	 has_many :locations

	 attr_accessor :password, :password_confirmation
end
