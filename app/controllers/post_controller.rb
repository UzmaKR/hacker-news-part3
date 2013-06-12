
get '/post/new' do

  erb :post_form
end

post '/post/create' do

  redirect '/'
end

get '/post/:id' do
                    #includes link to create comment
  erb :show_post  #includes comment text box
end


