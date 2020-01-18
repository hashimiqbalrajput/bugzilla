# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name: "Hashim Iqbal", email: "hashim.iqbal@devsinc.com", password: "hashimiqbal", user_type: "manager")
User.create(name: "Hashim Rajput", email: "hashimrajput13@gmail.com", password: "hashimiqbal", user_type: "developer")
User.create(name: "Hashim Ravian", email: "hashimravian007@gmail.com", password: "hashimiqbal", user_type: "qa")

Project.create(title: "New Project", content: "This is my new project. This is created for testing", owner_id: 1)
ProjectUser.create(user_id: 1, project_id: 1)