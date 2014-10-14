class Topic < ActiveRecord::Base
  has_many :comments
  validates :question, presence: true,
                    length: { minimum: 5 }
end
