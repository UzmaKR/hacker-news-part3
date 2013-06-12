
get '/user/:id/posts' do

  erb :user_posts
end

get '/user/:id/comments' do

  erb :user_comments
end

get '/user/new' do

  erb :user_signup 
end

post '/user/create' do

  redirect '/index'
end

get '/user/:id' do

  erb :user_profile
end
