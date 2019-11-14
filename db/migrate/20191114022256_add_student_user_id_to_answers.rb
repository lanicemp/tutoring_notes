class AddStudentUserIdToAnswers < ActiveRecord::Migration
  def change
    add_column :answers, :student_user_id, :integer
  end
end
