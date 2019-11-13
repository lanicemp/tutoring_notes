class QuestionsController < ApplicationController

  # GET: /questions index
  get "/questions" do
    
    if logged_in?
      @questions = Question.all 
      if @questions.empty?
        redirect "/questions/new"
      else 
        erb :"/questions/index.html"
      end
    else 
      erb :'/'
    end 
  end

  # GET: /questions/new
  get "/questions/new" do
  
    if logged_in?
      erb :"/questions/new.html"
    else 
      erb :'/'
    end 
  end

  # POST: /questions
  post "/questions" do
    @question = Question.new(inquiry: params[:question])
    @question.student_user = current_user
    if logged_in? && @question.save 
      redirect "/questions"
    elsif @question.errors.any? 
      @questions = Question.all
      erb :'/questions'
    else 
      erb :'/'
    end 
  end

  # GET: /questions/5
  get "/questions/:id" do
    if logged_in?
      erb :"/questions/show.html"
    else 
      erb :'/'
    end 
  end

  # GET: /questions/5/edit
  get "/questions/:id/edit" do
    if logged_in?
      erb :"/questions/edit.html"
    else 
      erb :'/'
    end 
  end

  # PATCH: /questions/5
  patch "/questions/:id" do
    if logged_in?
      redirect "/questions/:id"
    else 
      erb :'/'
    end 
  end

  # DELETE: /questions/5/delete
  delete "/questions/:id/delete" do
    if logged_in?
      redirect "/questions"
    else 
      erb :'/'
    end 
  end
end
