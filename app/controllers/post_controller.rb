
get '/post/new' do

  erb :post_form
end

post '/post/create' do
  @post = Post.new(params[:post])
  if @post.save
    redirect '/'
  else
    erb :post_form
  end
end

get '/post/:id' do

  @post = Post.find(params[:id])
                    #includes link to create comment
  erb :show_post  #includes comment text box
end


