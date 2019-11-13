class RenameStudentIdToStudentUserId < ActiveRecord::Migration
  def change
    rename_column :questions, :student_id, :student_user_id
  end
end
