##Delete this later using as reference 


# class PostsController < ApplicationController

#     get '/' do
#         redirect '/posts'
#     end 

#     get '/post' do 
#         status 200 
#         @post = Post.visible 
#         erb :"posts/index.html"
#     end 

#     get '/post/new' do 
#         if !logged_in?
#             redirect "login"
#         else 
#             "A new post form"
#         end
#     end 

#     get 'posts/:id' do 
#         @post = Post.find(paramas[:id])
#         erb :"posts/show.html"
#     end 

#     post '/posts' do 
#         @post = Post.create(title: params[:title], content: params[:content])
#         redirect "/posts/#{@posts.id}"
#     end 

    
# end 