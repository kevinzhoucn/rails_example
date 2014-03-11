# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

(Maintain::InviteUser).create(name: "zpf", code: "cny")
(Maintain::InviteUser).create(name: "wcx", code: "jzw")
(Maintain::InviteUser).create(name: "zgf", code: "cny")
(Maintain::InviteUser).create(name: "bjy", code: "jzw")