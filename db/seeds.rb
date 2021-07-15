5.times do |i|
  user = User.create name: "User: #{i}", age: i * 3

  2.times do |j|
    Post.create title: "Post: #{j * i}", content: "post content #{i * j}", author_id: user.id
  end
end


