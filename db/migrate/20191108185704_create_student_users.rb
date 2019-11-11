class CreateStudentUsers < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :age
      t.string :grade
      t.string :username
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
