# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user1 = User.create(username: "user1", password: "password", password_confirmation: "password")
journal1 = Journal.create(title: "Journal_1", page_count: 0, user_id: user1.id)
entry1 = Entry.create(title: "Entry_1", content: "This is an entry", journal_id: journal1.id)