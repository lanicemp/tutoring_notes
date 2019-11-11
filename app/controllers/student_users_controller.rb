class StudentUsersController < ApplicationController
    
    configure do 
        set :views, 'app/views'
        set :sessions, true
    end 
    
    get 'signup' do 
        erb :"students/create_account"
    end 

    post 'students' do 
        @student = StudentUser.new 
        @student.email = params[:email]
        @student.password = params[:password]
        if @student.save 
            redirect '/login'
        else 
            erb :"/signup"
        end 
    end 

end 