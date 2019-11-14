class AnswersController < ApplicationController

  # GET: /answers
  get "/answers" do
    erb :"/answers/index.html"
  end

  # GET: /answers/new
  get "/answers/new" do
    erb :"/answers/new.html"
  end

  # POST: /answers
  post "/answers" do
    
    @answer = Answer.new(answer: params[:answer])
    @answer.student_user = current_user
    if logged_in? && @answer.save 
      redirect "//questions/:id"
    elsif @answer.errors.any? 
      @answers = Answers.all
      erb :'/questions'
    else 
      erb :'/'
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
