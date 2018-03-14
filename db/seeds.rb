require 'random_data'

#Create Users
50.times do
  User.create!(
    email:  RandomData.random_email,
    password:   RandomData.random_sentence
  )
end

users = User.all

# Create Posts
50.times do
  Post.create!(
    title:  RandomData.random_sentence,
    body:   RandomData.random_paragraph
  )
end
posts = Post.all

# Create Comments
100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
