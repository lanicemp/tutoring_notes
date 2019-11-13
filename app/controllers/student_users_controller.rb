class StudentUsersController < ApplicationController
    
    
  get '/signup' do 
      erb :"student_users/create_account.html"
  end 

  post "/create_account" do
    user = StudentUser.new(
      :name => params[:name],
      :email => params[:email], 
      :username => params[:username], 
      :password => params[:password],
      :age => params[:age],
      :grade => params[:grade]) 

    if user.password == params[:password_confirmation] && user.save
      login(user.email, user.password)
    
      redirect "/questions"
    else
      redirect "/failure"
    end
  end 
    
  # post 'students' do 
  #   @student = StudentUser.new 
  #   @student.email = params[:email]
  #   @student.password = params[:password]
  #   if @student.save 
  #     redirect '/login'
  #   else 
  #     erb :"/signup"
  #   end 
  # end 

end 