class User < ActiveRecord::Base
	before_save { self.email = email.downcase }
	validates :name, presence: true, length: { maximium: 50}, uniqueness: true
	validates :email, presence: true, uniqueness: {case_sensitive: false}
	has_secure_password
	validates :password, length: { minimum: 6 }
end