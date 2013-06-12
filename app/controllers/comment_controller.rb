
post '/comment/create' do

  @comment = Comment.new(params[:comment])
  @comment.save
  redirect "/post/#{params[:comment][:post_id]}"

end


