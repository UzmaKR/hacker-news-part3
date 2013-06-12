require 'faker'
#create users
20.times do |n|
  User.create(name: Faker::Name.name,
             email: Faker::Internet.email,
             password: Faker::Lorem.word) 
end

20.times do |n|
  post = Post.create(url: Faker::Internet.url,
              title: Faker::Lorem.words)
  User.find(rand(1..20)).posts << post
end

20.times do |n|
  comment = Comment.create(content: Faker::Lorem.paragraph)
  Post.find(rand(1..20)).comments << comment
  User.find(rand(1..20)).comments << comment
end
