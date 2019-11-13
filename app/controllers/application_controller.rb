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
      session.has_key?(:email)
    end 

    def login(email, password)
      
      student = StudentUser.find_by(:email => email)
      if student &&  student.authenticate(password)
        session[:email] = student.email
      else 
        redirect '/login'
      end 
    end 

    def current_user
      StudentUser.find_by_email(session[:email]) 
    end

    def logout!
      session.clear
    end 

  end

end 



      

