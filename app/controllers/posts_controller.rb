class PostsController < ApplicationController

    get '/' do
        redirect '/posts'
    end 

    get '/post' do 
        status 200 
        @post = Post.visible 
        erb "posts/index.html"
    end 

    get '/post/new' do 
        if !logged_in?
            redirect "login"
        else 
            "A new post form"
        end
    end 

    get 'posts/:id' do 
        @post = Post.find(paramas[:id])
    end 

    
end 