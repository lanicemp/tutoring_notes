class Question < ActiveRecord::Base

    belongs_to :student_user
    has_many :answers

    validates :inquiry, presence:true, uniqueness: true

end
