get '/user/:id/posts' do
	@user = User.find(params[:id])
  erb :user_posts
end

get '/user/:id/comments' do
	@user = User.find(params[:id])
	@comments = User.find(params[:id]).comments
  erb :user_comments
end

get '/user/new' do
  erb :user_signup 
end

post '/user/create' do
	@user = User.create(name: params[:name], email: params[:email], 
							password: params[:password])
  session[:user_id] = @user.id
  redirect '/'
end

get '/user/:id' do
	@user = User.find(params[:id])
  erb :user_profile
end

get '/logout' do
	session.clear
	redirect '/'
end

get '/login' do
	redirect '/' if session[:user_id]
	erb :login
end

post '/login' do
	authenticate(params[:email], params[:password])
end
