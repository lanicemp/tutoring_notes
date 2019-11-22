class StudentUser < ActiveRecord::Base

    has_many :questions 
    has_many :answers
    has_many :received_answers, through: :questions, source: :answer
    #looking for recieved answers through the questions that I asked and looking
    # in the answer association for each question. 

    validates :name, :email, presence: true
    validates :email, :username,  uniqueness: true 
    has_secure_password
    #macro
    
    
end
