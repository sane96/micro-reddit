class User < ApplicationRecord
    has_many :posts, dependent: :destroy
    has_many :comments, dependent: :destroy
  
    validates :username, presence: true, uniqueness: true, length: { minimum: 5 }
end
