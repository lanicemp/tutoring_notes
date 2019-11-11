class StudentUser < ActiveRecord::Base

    has_many :questions 
    has_many :comments 

    validates :name, presence: true
    validates :email, uniqueness: true 
    has_secure_password
    
    
end
