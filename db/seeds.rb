# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


  Item.create(genre_id:"1",name:"うまいやつ",text:"これはうまい",non_taxed_price:"350",status:"0")
  Item.create(genre_id:"2",name:"なかなかなやつ",text:"これはなかなか",non_taxed_price:"550",status:"0")
  Item.create(genre_id:"3",name:"うますぎて売り切れるやつ",text:"これはうますぎる",non_taxed_price:"630",status:"1")
  Item.create(genre_id:"4",name:"そこそこなやつ",text:"これはそこそこ",non_taxed_price:"750",status:"0")

  EndUser.create(email:"aaa@aaa",password:"aaaaaa")

  Admin.create(email:"bbb@bbb",password:"bbbbbb")