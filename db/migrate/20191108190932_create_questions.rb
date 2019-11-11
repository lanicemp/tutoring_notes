class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :inquiry
      t.integer :student_id

      t.timestamps null: false
    end
  end
end
