class RenameStudentsTable < ActiveRecord::Migration
  def change
    rename_table :students, :student_users
  end
end
