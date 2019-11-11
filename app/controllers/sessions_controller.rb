class SessionsController < ApplicationController 
    
    get "/" do
      erb :welcome
    end

    get "/login" do 
      erb :"sessions/login.html"
    end 

    get "/create_account" do 
      erb :"sessions/create_account.html"
    end

    post "/create_account" do
      user = StudentUser.new(:username => params[:username], :password => params[:password])
      if user.save
        redirect "/login"
        else
        redirect "/failure"
      end
    end

    post "/sessions" do 
        login(params[:email], params[:password])
        redirect "/posts"
    end 

    get '/logout' do 
        logout!
        redirect '/posts'
    end 

    get "/failure" do
      erb :failure
    end

 end 