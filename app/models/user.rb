class User < ActiveRecord::Base
	validates :username, presence: true, length: { maximum: 50 }, uniqueness: true
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :email, presence: true

	validates :password, presence: true, length: { minimum: 6 }
	has_secure_password
end

