# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name: "first-user", email: "first-user@mail.com", password: "password", password_confirmation: "password")
User.create(name: "second-user", email: "second-user@mail.com", password: "password", password_confirmation: "password")
Article.create(title: "title1", content: "content1")
Article.create(title: "title2", content: "content2")
Tag.create(tag: "sample", article_id: 1)
Tag.create(tag: "sample", article_id: 2)
Like.create(user_id: 1, article_id: 1)
Like.create(user_id: 2, article_id: 1)
