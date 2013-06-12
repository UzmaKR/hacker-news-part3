get '/' do
  
  #get all posts
  @post = Post.order("created_at desc")

  erb :index
end
