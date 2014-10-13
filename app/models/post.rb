class Post < ActiveRecord::Base
	has_many :comments
	validates :title, presence: true, on: :create
	validates :author, presence: true, on: :create
	validates :content, presence: true, on: :create
end