require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "auth_demo_lv"
  end

  helpers do 
    
    def logged_in?
      !!sesssion[:email]
    end 

    def login(email, password)
      
      student = StudentUser.find_by(:email => email)
    
      if student &&  user.authenticate(password)
      session[:email] = student.email
      else 
        redirect '/login'
      end 
    end 

    def logout!
      session.clear
    end 

  end

end 


    # get "/" do
    #   erb :welcome
    # end

    # get "/login" do 
    #   erb :"sessions/login.html"
    # end 

    # get "/create_account" do 
    #   erb :"sessions/create_account"
    # end 


      

