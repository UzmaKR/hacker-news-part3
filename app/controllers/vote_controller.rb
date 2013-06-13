#post vote up
post '/postvote' do
  p params
  # if params[:post][:updownvote] != '1' || params[:post][:updownvote] != '-1'
  #   return "STOP TRYING TO HACK"
  # end
  postvote = Postvote.create(params[:post])
  # postvote.post 
  # post = Post.find(params[:post][:post_id])
  postvote.post.votecount += (params[:post][:updownvote]).to_i
  postvote.post.save
  postvote.post.votecount.to_s
end

post '/commentvote' do
  p params
  commentvote = Commentvote.create(params[:comment])
  # comment = Comment.find(params[:comment][:comment_id])
  commentvote.comment.votecount += (params[:comment][:updownvote]).to_i
  commentvote.comment.save
  commentvote.comment.votecount.to_s
end


