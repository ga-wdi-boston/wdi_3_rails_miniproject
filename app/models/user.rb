class User < ActiveRecord::Base
	has_many :posts
	has_many :comments
	validates :first_name, presence: true, uniqueness: true
	validates :last_name, presence: true, uniqueness: true
	validates :email, presence: true, uniqueness: true
	has_secure_password
end