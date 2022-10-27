# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create(
    name: "Jhon First",
    photo: "https://randomuser.me/api/portraits/men/9.jpg",
    bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.")

    100.times do |post|
    Post.create(title: "#{post}-Post",
        text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam quis commodo velit. Maecenas quis tortor nec neque ornare pharetra vitae in quam. Phasellus dapibus a dui at euismod. Suspendisse ac cursus ligula. Pellentesque in augue sit amet ipsum condimentum facilisis. Aenean rutrum feugiat condimentum.",
        author_id: (rand(1..10)))
end

200.times do |comment|
    Comment.create(author_id: (rand(1..10)),
        post_id: (rand(1..100)),
        text: "Phasellus dapibus a dui at euismod." )
end

300.times do |like|
    Like.create(author_id: (rand(1..10)), post_id: (rand(1..100)))
end
