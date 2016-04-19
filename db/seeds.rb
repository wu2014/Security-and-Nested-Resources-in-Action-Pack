# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Profile.destroy_all
TodoList.destroy_all
TodoItem.destroy_all

User.create! [
  { username: "Fiorina", password_digest: "password" },
  { username: "Trump", password_digest: "password" },
  { username: "Carson", password_digest: "password" },
  { username: "Clinton", password_digest: "password" }
]

User.find_by!(username: "Fiorina").create_profile(gender: "female", birth_year: 1954, first_name: "Carly", last_name: "Fiorina")
User.find_by!(username: "Trump").create_profile(gender: "male", birth_year: 1946, first_name: "Donald", last_name: "Trump")
User.find_by!(username: "Carson").create_profile(gender: "male", birth_year: 1951, first_name: "Ben", last_name: "Carson")
User.find_by!(username: "Clinton").create_profile(gender: "female", birth_year: 1947, first_name: "Hillary", last_name: "Clinton")

User.first.todo_lists.create! [{list_name: "1", list_due_date: Date.today + 1.year}] 
User.second.todo_lists.create! [{list_name: "2", list_due_date: Date.today + 1.year}]
User.third.todo_lists.create! [{list_name: "3", list_due_date: Date.today + 1.year}]
User.fourth.todo_lists.create! [{list_name: "4", list_due_date: Date.today + 1.year}]


TodoList.first.todo_items.create! [
  { title: "one", description: "first description.", due_date: Date.today + 1.year },
  { title: "two", description: "second description.", due_date: Date.today + 1.year },
  { title: "three", description: "third description.", due_date: Date.today + 1.year },
  { title: "four", description: "fourth description.", due_date: Date.today + 1.year },
  { title: "five", description: "fifth description.", due_date: Date.today + 1.year }
]
TodoList.second.todo_items.create! [
  { title: "a", description: "a description.", due_date: Date.today + 1.year },
  { title: "b", description: "b description.", due_date: Date.today + 1.year },
  { title: "c", description: "c description.", due_date: Date.today + 1.year },
  { title: "d", description: "d description.", due_date: Date.today + 1.year },
  { title: "e", description: "e description.", due_date: Date.today + 1.year }
]
TodoList.third.todo_items.create! [
  { title: "a1", description: "a1 description.", due_date: Date.today + 1.year },
  { title: "b1", description: "b1 description.", due_date: Date.today + 1.year },
  { title: "c1", description: "c1 description.", due_date: Date.today + 1.year },
  { title: "d1", description: "d1 description.", due_date: Date.today + 1.year },
  { title: "e1", description: "e1 description.", due_date: Date.today + 1.year }
]
TodoList.fourth.todo_items.create! [
  { title: "a2", description: "a2 description.", due_date: Date.today + 1.year },
  { title: "b2", description: "b2 description.", due_date: Date.today + 1.year },
  { title: "c2", description: "c2 description.", due_date: Date.today + 1.year },
  { title: "d2", description: "d2 description.", due_date: Date.today + 1.year },
  { title: "e2", description: "e2 description.", due_date: Date.today + 1.year }
]
