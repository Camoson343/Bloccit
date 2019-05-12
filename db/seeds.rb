require 'random_data'

# Create Users
  5.times do
    User.create!(
      name: RandomData.random_name,
      email: RandomData.random_email,
      password: RandomData.random_sentence
    )
  end
  users = User.all

# Create Topics
 15.times do
   Topic.create!(
     name:         RandomData.random_sentence,
     description:  RandomData.random_paragraph
   )
 end
 topics = Topic.all

 # Create Posts
 50.times do

   Post.create!(
     user: users.sample,
     topic: topics.sample,
     title:  RandomData.random_sentence,
     body:   RandomData.random_paragraph
   )
 end
 posts = Post.all

 # Create Comments

 20.times do
   Comment.create!(
     user: users.sample,
     post: posts.sample,
     body: RandomData.random_paragraph
   )
 end

 # Create Sponsored Posts
   15.times do
     SponsoredPost.create!(
       title: RandomData.random_sentence,
       body: RandomData.random_sentence,
       price: 99,
       topic: topics.sample
     )
   end

 puts "#{Post.count}"
 Post.find_or_create_by(title: "A unique title", body: "A unique body")
 puts "#{Post.count}"

 user = User.first
 user.update_attributes!(
   email: 'ccdecisions@gmail.com',
   password: 'helloworld'
 )

 puts "Seed finished"
 puts "#{User.count} users created"
 puts "#{Topic.count} topics created"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"
 puts "#{SponsoredPost.count} sponsored posts created"
