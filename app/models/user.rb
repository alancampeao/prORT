class User < ActiveRecord::Base
    acts_as_voter
    
    validates :email, email_format: { message: "O formato do email está errado!" }
    
    validates_presence_of :email , :full_name , :password
    validates_confirmation_of :password                 
    validates_uniqueness_of :email
    
    has_secure_password 
end
