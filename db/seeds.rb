# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


topic_1 = Topic.create(question: "Please give me feedback on my design", name: "Robert")


# Bookmark.delete_all
# Comment.delete_all

# google = Bookmark.create(title: "Google Search", url: 'http://www.google.com', category: 'Search',checkbox: true)
# rails_api = Bookmark.create(title: 'Rails API', url: 'http://api.rubyonrails.org', category: 'Web Development')
# ga_wdi = Bookmark.create(title: 'GA WDI Students', url: 'http://wdi-hub.herokuapp.com/#/students', category: 'General Assembly')
# regexr = Bookmark.create(title: 'RegExr', url: 'http://www.regexr.com', category: 'Web Development::Advanced', checkbox: true)
# stack = Bookmark.create(title: 'Stack Overflow', url: 'http://stackoverflow.com', category: 'Web Development', checkbox: true)

# google.comments.create(body: 'Google fonts is free!')
# google.comments.create(body: 'They''re free for a reason')
# google.tags.create(tag_text: 'Web Design')
# google.tags.create(tag_text: 'Google')
# google.tags.create(tag_text: 'Web Fonts')
# google.tags.create(tag_text: 'Free')

# rails_api.comments.create(body: 'Great place for learning about rails')
# rails_api.tags.create(tag_text: 'Rails')
# rails_api.tags.create(tag_text: 'API')
