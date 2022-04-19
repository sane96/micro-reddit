class Comment < ApplicationRecord
    belongs_to :user, foreign_key: 'user_id'
    belongs_to :post, foreign_key: 'post_id'
    
    validates :body, presence: true, length: {minimum: 1}
end
