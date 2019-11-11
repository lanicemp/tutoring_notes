class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :student_id
      t.string :answer

      t.timestamps null: false
    end
  end
end
