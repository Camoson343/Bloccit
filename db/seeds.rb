require 'random_data'

 # Create Advertisements
  15.times do
    Advertisement.create!(
      title: Randomdata.random_sentence,
      copy: Randomdata.random_paragraph,
      price: 99
    )
  end

 # Create Posts
 50.times do
 # #1
   Post.create!(
 # #2
     title:  RandomData.random_sentence,
     body:   RandomData.random_paragraph
   )
 end
 posts = Post.all

 # Create Comments
 # #3
 100.times do
   Comment.create!(
 # #4
     post: posts.sample,
     body: RandomData.random_paragraph
   )
 end

 puts "#{Post.count}"
 posts.find_or_create_by(title: "A unique title", body: "A unique body")
 puts "#{Post.count}"

 puts "Seed finished"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"
 puts "#{Advertisement.count} ads created"
