class Comment < ActiveRecord::Base
    validates_presence_of :content
    validates_length_of :content, minimum: 1

    belongs_to :post
    belongs_to :user
end
