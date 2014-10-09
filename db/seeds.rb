# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.delete_all
post1 = Post.create(title: "cooking", post: "bla bla bla i like to cook")
post2 = Post.create(title: "driving", post: "learn how to drive through drivers ed")
post3 = Post.create(title: "writing", post: "you should have learned this when you were young")

post1.comments.create(comment: "this worked for me")
post1.comments.create(comment: "i couldnt follow this")

post2.comments.create(comment: "i cant drive, this didnt work")
post2.comments.create(comment: "thanks for teh help")

post3.comments.create(comment: "can you teach me to type")
post3.comments.create(comment: "yay ya yeah")
