class Question < ActiveRecord::Base

    belongs_to :student
    has_many :comments
    belongs_to :lesson
end
