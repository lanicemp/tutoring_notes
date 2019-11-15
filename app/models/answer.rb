class Answer < ActiveRecord::Base

    belongs_to :question
    belongs_to :student_user

    validates :description, uniqueness: true
end
