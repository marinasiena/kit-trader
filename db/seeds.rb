# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
Item.delete_all
Club.delete_all
League.delete_all

User.create!([
  {id: 1, name: "Firsty Firsterson", email: "first@testemail.com", password: "123appletree", phone: "1112223333", image: "https://cdn3.iconfinder.com/data/icons/line-icons-large-version/64/id-card-512.png"},
  {id: 2, name: "Secondy Secondton", email: "second@testemail.com", password: "123appletree", phone: "2223334444", image: "https://cdn3.iconfinder.com/data/icons/line-icons-large-version/64/id-card-512.png"},
  {id: 3, name: "Thirdy McThirdster", email: "third@testemail.com", password: "123appletree", phone: "3334445555", image: "https://cdn3.iconfinder.com/data/icons/line-icons-large-version/64/id-card-512.png"},
  {id: 4, name: "Fourthson Fourthwright", email: "fourth@testemail.com", password: "123appletree", phone: "4445556666", image: "https://cdn3.iconfinder.com/data/icons/line-icons-large-version/64/id-card-512.png"},
  {id: 5, name: "Fifth Fifthenalia", email: "fifth@testemail.com", password: "123appletree", phone: "5556667777", image: "https://cdn3.iconfinder.com/data/icons/line-icons-large-version/64/id-card-512.png"}
])

Club.create!([
  {id: 1, name: "Raleigh FC", location: "28701"},
  {id: 2, name: "Hillsboro Elite", location: "27802"},
  {id: 3, name: "Cary United", location: "28771"},
  {id: 4, name: "Fighting Roxboro", location: "28731"},
  {id: 5, name: "Durham FC", location: "28877"},
])
League.create!([
  {id: 1, name: "Classic", clubs_id: 1},
  {id: 2, name: "Club", clubs_id: 1},
  {id: 3, name: "Challenge", clubs_id: 2},
  {id: 4, name: "Sports", clubs_id: 2},
  {id: 5, name: "Master", clubs_id: 3},
  {id: 6, name: "Excellent", clubs_id: 4},
  {id: 7, name: "Semi-Pro", clubs_id: 5},
])

Item.create!([
  {id: 1, user_id: 1, club_id: 1, league_id: 1, name: "Item 1", item_type: "Jersey", color: "Gold", size: "YL", number: "", personalize: true, comment: "These comments are probably the best comments that a product has ever had.", condition: "Used"},
  {id: 2, user_id: 1, club_id: 1, league_id: 1, name: "Item 2", item_type: "Shorts", color: "Green", size: "YM", number: "", personalize: true, comment: "These comments are probably the best comments that a product has ever had.", condition: "Almost New"},
  {id: 3, user_id: 2, club_id: 2, league_id: 2, name: "Item 3", item_type: "Jersey", color: "Gold", size: "YL", number: "", personalize: false, comment: "These comments are probably the best comments that a product has ever had.", condition: "Almost New"},
  {id: 4, user_id: 2, club_id: 2, league_id: 2, name: "Item 4", item_type: "Shorts", color: "Blue", size: "YS", number: "", personalize: false, comment: "These comments are probably the best comments that a product has ever had.", condition: "New"},
  {id: 5, user_id: 3, club_id: 3, league_id: 3, name: "Item 5", item_type: "Cleats", color: "Green", size: "S", number: "", personalize: true, comment: "These comments are probably the best comments that a product has ever had.", condition: "Wore Out"},
  {id: 6, user_id: 4, club_id: 4, league_id: 4, name: "Item 6", item_type: "Jersey", color: "Blue", size: "XL", number: "", personalize: false, comment: "These comments are probably the best comments that a product has ever had.", condition: "New"},
  {id: 7, user_id: 5, club_id: 5, league_id: 5, name: "Item 7", item_type: "Jersey", color: "Burgandy", size: "YM", number: "", personalize: false, comment: "These comments are probably the best comments that a product has ever had.", condition: "New"}
])
