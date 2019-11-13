class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :title
      t.text :description
      t.integer :question_id
                #^^foreign key 
                #means that answer belongs to question 
      t.timestamps null: false
    end
  end
end
