class User < ActiveRecord::Base
    acts_as_voter
    has_many :posts
    has_many :comments

    validates :email, email_format: { message: "O formato do email está errado!" }

    validates_presence_of :email , :full_name 
    validates_uniqueness_of :email

    has_secure_password
end
