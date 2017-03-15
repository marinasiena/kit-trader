User.delete_all
Item.delete_all
Club.delete_all

User.create!([
  {id: 1, name: "Firsty Firsterson", email: "first@testemail.com", password: "123appletree", phone: "1112223333", image: "https://cdn3.iconfinder.com/data/icons/line-icons-large-version/64/id-card-512.png"},
  {id: 2, name: "Secondy Secondton", email: "second@testemail.com", password: "123appletree", phone: "2223334444", image: "https://cdn3.iconfinder.com/data/icons/line-icons-large-version/64/id-card-512.png"},
  {id: 3, name: "Thirdy McThirdster", email: "third@testemail.com", password: "123appletree", phone: "3334445555", image: "https://cdn3.iconfinder.com/data/icons/line-icons-large-version/64/id-card-512.png"},
  {id: 4, name: "Fourthson Fourthwright", email: "fourth@testemail.com", password: "123appletree", phone: "4445556666", image: "https://cdn3.iconfinder.com/data/icons/line-icons-large-version/64/id-card-512.png"},
  {id: 5, name: "Fifth Fifthenalia", email: "fifth@testemail.com", password: "123appletree", phone: "5556667777", image: "https://cdn3.iconfinder.com/data/icons/line-icons-large-version/64/id-card-512.png"}
])

Club.create!([
  {id: 1, long_name: "Capital Area SL", short_name: "CASL", location: "27513", image: "img/clublogos/acs.png"},
  {id: 2, long_name: "Chatham SL", short_name: "CSL", location: "27602", image: "img/clublogos/acs.png"},
  {id: 3, long_name: "East Wake SA", short_name: "EWSA", location: "27545", image: "img/clublogos/acs.png"},
  {id: 4, long_name: "Greater Cleveland AA", short_name: "GCAA", location: "27604", image: "img/clublogos/acs.png"},
  {id: 5, long_name: "North Carolina FC Youth", short_name: "NCFC", location: "27608", image: "img/clublogos/acs.png"},
  {id: 6, long_name: "Sanford Area SL", short_name: "SASL", location: "27635", image: "img/clublogos/acs.png"},
  {id: 7, long_name: "Triangle Futbol Club Alliance", short_name: "TFCA", location: "27650", image: "img/clublogos/acs.png"},
  {id: 8, long_name: "Triangle United SA", short_name: "TUSA", location: "27698", image: "img/clublogos/acs.png"},
  {id: 9, long_name: "TriangleUnited/WakeFC", short_name: "TUSA-WakeFC", location: "27676", image: "img/clublogos/acs.png"},
  {id: 10, long_name: "TriangleUnited/XL Soccer", short_name: "TUSA-XL", location: "27690", image: "img/clublogos/acs.png"},
  {id: 11, long_name: "AC Sandhills", short_name: "ACS", location: "27614", image: "img/clublogos/acs.png"},
  {id: 12, long_name: "Fayetteville SC", short_name: "FSC", location: "27615", image: "img/clublogos/acs.png"},
  {id: 13, long_name: "Johnston United SA", short_name: "JUSA", location: "27692", image: "img/clublogos/acs.png"},
  {id: 14, long_name: "Burlington SC", short_name: "BSC", location: "27517", image: "img/clublogos/acs.png"},
  {id: 15, long_name: "Central Carolina SC", short_name: "CCSC", location: "27702", image: "img/clublogos/acs.png"},
  {id: 16, long_name: "Greensboro United SC", short_name: "GUSA", location: "27705", image: "img/clublogos/acs.png"},
  {id: 17, long_name: "Kernersville SC", short_name: "KSA", location: "27711", image: "img/clublogos/acs.png"},
  {id: 18, long_name: "NC Soccer Fusion", short_name: "NCSF", location: "27713", image: "img/clublogos/acs.png"},
  {id: 19, long_name: "NC United SA", short_name: "NCUS", location: "27707", image: "img/clublogos/acs.png"},
  {id: 20, long_name: "Piedmont Triad Futbol Club", short_name: "PTFC", location: "27601", image: "img/clublogos/acs.png"},
  {id: 21, long_name: "Twin City Youth SA", short_name: "TCYS", location: "27656", image: "img/clublogos/acs.png"},
  {id: 22, long_name: "United Rockingham Youth SA", short_name: "URYS", location: "27607", image: "img/clublogos/acs.png"},
  {id: 23, long_name: "other club not listed", short_name: "other", location: "27697", image: "img/clublogos/acs.png"}
])

Kit.create!([
  {id: 1, user_id: 1, club_id: 1, trans_type: "sell", price: "15", zip_code: "27624", league: "Recreation", season: "2015"},
  {id: 2, user_id: 1, club_id: 10, trans_type: "sell", price: "25", zip_code: "27624", league: "Academy", season: "2015"},
  {id: 3, user_id: 2, club_id: 12, trans_type: "trade", price: "", zip_code: "27625", league: "Classic", season: "2016"},
  {id: 4, user_id: 2, club_id: 2, trans_type: "want", price: "", zip_code: "27625", league: "Challenge", season: "2016"},
  {id: 5, user_id: 3, club_id: 13, trans_type: "trade", price: "", zip_code: "27626", league: "Academy", season: "2016"},
  {id: 6, user_id: 3, club_id: 17, trans_type: "sell", price: "45", zip_code: "27627", league: "Challenge", season: "2015"},
  {id: 7, user_id: 4, club_id: 4, trans_type: "donate", price: "", zip_code: "27628", league: "Select", season: "2016"},
  {id: 8, user_id: 4, club_id: 19, trans_type: "want", price: "", zip_code: "27628", league: "Classic", season: "2017"},
  {id: 9, user_id: 5, club_id: 5, trans_type: "sell", price: "50", zip_code: "27629", league: "Challenge", season: "2016"},
  {id: 10, user_id: 5, club_id: 22, trans_type: "sell", price: "10", zip_code: "27624", league: "Challenge", season: "2017"}
])

Item.create!([
  {id: 1, kit_id: 1, item_type: "Jersey", size: "YS", number: "10", color: "Gold", condition: "Used | good", comment: "These comments are probably the best comments that a product has ever had."},
  {id: 2, kit_id: 1, item_type: "Shorts", size: "YS", number: "10", color: "Light Green", condition: "New", comment: "These comments are probably the best comments that a product has ever had."},
  {id: 3, kit_id: 2, item_type: "Jersey", size: "YL", number: "14", color: "Gold", condition: "Used | poor", comment: "These comments are probably the best comments that a product has ever had."},
  {id: 4, kit_id: 2, item_type: "Shorts", size: "YL", number: "14", color: "Cyan", condition: "New", comment: "These comments are probably the best comments that a product has ever had."},
  {id: 5, kit_id: 2, item_type: "Warmup Jacket", size: "YL", number: "14", color: "Green", condition: "Used | fair", comment: "These comments are probably the best comments that a product has ever had."},
  {id: 6, kit_id: 3, item_type: "Shorts", size: "LL", number: "7", color: "Silver", condition: "New", comment: "These comments are probably the best comments that a product has ever had."},
  {id: 7, kit_id: 2, item_type: "Jersey", size: "YS", number: "5", color: "Blue", condition: "New", comment: "These comments are probably the best comments that a product has ever had."},
  {id: 8, kit_id: 4, item_type: "Jersey", size: "YM", number: "24", color: "Navy", condition: "Used | poor", comment: "These comments are probably the best comments that a product has ever had."},
  {id: 9, kit_id: 4, item_type: "Warmup Pants", size: "YL", number: "24", color: "Orange", condition: "Like New", comment: "These comments are probably the best comments that a product has ever had."},
  {id: 10, kit_id: 4, item_type: "Socks", size: "", number: "", color: "Yellow", condition: "New", comment: "These comments are probably the best comments that a product has ever had."},
  {id: 11, kit_id: 5, item_type: "Jersey", size: "YL", number: "14", color: "Gold", condition: "Used | poor", comment: "These comments are probably the best comments that a product has ever had."},
  {id: 12, kit_id: 5, item_type: "Shorts", size: "YL", number: "14", color: "Cyan", condition: "New", comment: "These comments are probably the best comments that a product has ever had."},
  {id: 13, kit_id: 5, item_type: "Warmup Jacket", size: "YL", number: "14", color: "Green", condition: "Used | fair", comment: "These comments are probably the best comments that a product has ever had."},
  {id: 14, kit_id: 6, item_type: "Jersey", size: "YL", number: "14", color: "Gold", condition: "Used | poor", comment: "These comments are probably the best comments that a product has ever had."},
  {id: 15, kit_id: 6, item_type: "Shorts", size: "YL", number: "14", color: "Cyan", condition: "New", comment: "These comments are probably the best comments that a product has ever had."},
  {id: 16, kit_id: 6, item_type: "Warmup Jacket", size: "YL", number: "14", color: "Green", condition: "Used | fair", comment: "These comments are probably the best comments that a product has ever had."},
  {id: 17, kit_id: 7, item_type: "Jersey", size: "YL", number: "14", color: "Gold", condition: "Used | poor", comment: "These comments are probably the best comments that a product has ever had."},
  {id: 18, kit_id: 7, item_type: "Shorts", size: "YL", number: "14", color: "Cyan", condition: "New", comment: "These comments are probably the best comments that a product has ever had."},
  {id: 19, kit_id: 7, item_type: "Warmup Jacket", size: "YL", number: "14", color: "Green", condition: "Used | fair", comment: "These comments are probably the best comments that a product has ever had."},
  {id: 20, kit_id: 8, item_type: "Jersey", size: "YL", number: "14", color: "Gold", condition: "Used | poor", comment: "These comments are probably the best comments that a product has ever had."},
  {id: 21, kit_id: 8, item_type: "Shorts", size: "YL", number: "14", color: "Cyan", condition: "New", comment: "These comments are probably the best comments that a product has ever had."},
  {id: 22, kit_id: 8, item_type: "Warmup Jacket", size: "YL", number: "14", color: "Green", condition: "Used | fair", comment: "These comments are probably the best comments that a product has ever had."},
  {id: 23, kit_id: 9, item_type: "Jersey", size: "YL", number: "14", color: "Gold", condition: "Used | poor", comment: "These comments are probably the best comments that a product has ever had."},
  {id: 24, kit_id: 9, item_type: "Shorts", size: "YL", number: "14", color: "Cyan", condition: "New", comment: "These comments are probably the best comments that a product has ever had."},
  {id: 25, kit_id: 9, item_type: "Warmup Jacket", size: "YL", number: "14", color: "Green", condition: "Used | fair", comment: "These comments are probably the best comments that a product has ever had."},
  {id: 26, kit_id: 10, item_type: "Jersey", size: "YL", number: "14", color: "Gold", condition: "Used | poor", comment: "These comments are probably the best comments that a product has ever had."},
  {id: 27, kit_id: 10, item_type: "Shorts", size: "YL", number: "14", color: "Cyan", condition: "New", comment: "These comments are probably the best comments that a product has ever had."},
  {id: 28, kit_id: 10, item_type: "Warmup Jacket", size: "YL", number: "14", color: "Green", condition: "Used | fair", comment: "These comments are probably the best comments that a product has ever had."}

])
