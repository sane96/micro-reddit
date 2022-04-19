class Post < ApplicationRecord
    belongs_to :user, foreign_key: 'user_id'
    has_many :comments
  
    validates :title, presence: true, length: { minimum: 3 }
    validates :body, presence: true, length: {minimum: 1}
end
