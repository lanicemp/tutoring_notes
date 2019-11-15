s1= StudentUser.create(name: 'Zy', age:'10', grade: '1', username: 'zy1', email: 'zy1@zy.com', password: "123")
q1= Question.create(inquiry: "How do I add a column to a database?", student_user_id: s1.id)
 
s2= StudentUser.create(name: 'LaNice', age:'13', grade: '9', username: 'la', email: 'la@la.com', password: "123")
Answer.create(description: "You can use the rake db:migration NAME=add_column_student_user_id_to_answers_table this added a column named student_user_id and the answers table.",
    question_id: q1.id,  student_user_id: s2.id
)  
q2= Question.create(inquiry: "What is the slope of y= 2x + 3 ", student_user_id: s2.id)
Answer.create(description: "The slope is 2. ", question_id: q2.id,  student_user_id: s1.id) 

