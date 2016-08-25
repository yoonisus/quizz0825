# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email:'member@gmail.com', password: 'test1234')
User.create(email:'writer@gmail.com', password: 'test1234')
User.create(email:'admin@gmail.com', password: 'test1234')

Post.create(title:'멤버의 글입니다.', content:'멤버가 쓴 글입니다.', user_id:'1')
Post.create(title:'모더레이터의 글입니다.', content:'모더레이터가 쓴 글입니다.', user_id:'2')
Post.create(title:'어드민의 글입니다.', content:'어드민이 쓴 글입니다.', user_id:'3')