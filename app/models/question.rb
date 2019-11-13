class Question < ActiveRecord::Base

    belongs_to :student_user
    has_many :answer 
end
