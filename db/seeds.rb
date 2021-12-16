# frozen_string_literal: true

Mark.destroy_all
Post.destroy_all
User.destroy_all

hash_users = 5.times.map do
  {
    name: FFaker::Internet.user_name[0...16],
    email: FFaker::Internet.safe_email
  }
end

users = User.create! hash_users

hash_posts = 20.times.map do
  {
    message: FFaker::HipsterIpsum.paragraph,
    user_id: users.sample.id
  }
end

posts = Post.create! hash_posts

hash_marks = []
marks_count = hash_posts.size
until marks_count.zero?
  hash = { mark: rand(1..10), user_id: users.sample.id, post_id: posts.sample.id }
  next unless (Mark.new hash).valid?

  hash_marks.push(hash)
  marks_count -= 1
end

Mark.create! hash_marks
