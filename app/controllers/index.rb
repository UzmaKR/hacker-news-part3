get '/' do
  
  #get all posts
  @post = Post.all

  erb :index
end
