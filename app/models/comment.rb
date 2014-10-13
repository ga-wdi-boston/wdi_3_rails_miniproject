class Comment < ActiveRecord::Base
  belongs_to :post
  has_many :subcomments, dependend: :destroy
end
