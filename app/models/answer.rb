class Answer < ActiveRecord::Base

    belongs_to :question
    belongs_to :student_user

    validates :answer, uniqueness: true
end
