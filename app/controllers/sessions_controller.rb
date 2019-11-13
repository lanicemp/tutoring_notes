class SessionsController < ApplicationController 
    
    get "/" do
      erb :welcome
    end

    get "/login" do 
      erb :"sessions/login.html"
    end 

    post "/sessions" do 
        login(params[:email], params[:password])

        redirect "/questions"
    end 

    get '/logout' do 
        logout!
        redirect '/'
    end 

    get "/failure" do
      erb :failure
    end

 end 