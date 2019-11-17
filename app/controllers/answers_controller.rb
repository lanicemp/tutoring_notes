class AnswersController < ApplicationController

  # GET: /answers
  get "/answers" do
    erb :"/answers/index.html"
  end

  # GET: /answers/new
  get "/questions/:question_id/answers" do
  
    @answers = Answer.find(params[:question_id])
    @question = (params[:question_id])
    if @answers == @question
      erb :"/answers/new.html"
    end
    
  end

  # POST: /answers
  post "/questions/:question_id/answers" do

    #@question = (params[:question_id])
    @question = Question.find_by id: params[:question_id]
    
    if @question &&  !params[:description].empty?
      @answer = Answer.new(description: params[:description]) 
      @answer.question = @question
      @answer.student_user = current_user
      @answer.save
      binding.pry

      #@answer = Answer.create(description: params[:description], question_id: params[:question_id])
      redirect "/questions/#{@question.id}"
    else 
      erb :'/questions'
    end 
  end

  # GET: /answers/5
  get "/answers/:id" do
    erb :"/answers/show.html"
  end

  # GET: /answers/5/edit
  get "/answers/:id/edit" do
    erb :"/answers/edit.html"
  end

  # PATCH: /answers/5
  patch "/answers/:id" do
    redirect "/answers/:id"
  end

  # DELETE: /answers/5/delete
  delete "/answers/:id/delete" do
    redirect "/answers"
  end
end
