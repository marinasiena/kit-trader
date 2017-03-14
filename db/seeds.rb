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
  {id: 1, name: "CASL | Capital Area SL", location: "27513"},
  {id: 2, name: "CSL | Chatham SL", location: "27602"},
  {id: 3, name: "EWSA | East Wake SA", location: "27545"},
  {id: 4, name: "GCAA | Greater Cleveland AA", location: "27604"},
  {id: 5, name: "NCFC | North Carolina FC Youth", location: "27608"},
  {id: 6, name: "SASL | Sanford Area SL", location: "27635"},
  {id: 7, name: "TFCA | Triangle Futbol Club Alliance", location: "27650"},
  {id: 8, name: "TUSA | Triangle United SA", location: "27698"},
  {id: 9, name: "TUSA-WakeFC | TriangleUnited/WakeFC", location: "27676"},
  {id: 10, name: "TUSA-XL | TriangleUnited/XL Soccer", location: "27690"},
  {id: 11, name: "ACS | AC Sandhills", location: "27614"},
  {id: 12, name: "FSC | Fayetteville SC", location: "27615"},
  {id: 13, name: "JUSA | Johnston United SA", location: "27692"},
  {id: 14, name: "BSC | Burlington SC", location: "27517"},
  {id: 15, name: "CCSC | Central Carolina SC", location: "27702"},
  {id: 16, name: "GUSA | Greensboro United SC", location: "27705"},
  {id: 17, name: "KSA | Kernersville SC", location: "27711"},
  {id: 18, name: "NCSF | NC Soccer Fusion", location: "27713"},
  {id: 19, name: "NCUSA | NC United SA", location: "27707"},
  {id: 20, name: "PTFC | Piedmont Triad Futbol Club", location: "27601"},
  {id: 21, name: "TCYSA | Twin City Youth SA", location: "27656"},
  {id: 22, name: "URYSA | United Rockingham Youth SA", location: "27607"},
  {id: 23, name: "other | other club not listed", location: "27697"}
])

Item.create!([
  {id: 1, user_id: 1, club_id: 1, league: "Recreation", name: "Like New Jersey", item_type: "Jersey", color: "Gold", size: "YL", number: "4", personalized: true, comment: "These comments are probably the best comments that a product has ever had.", condition: "Used | good"},
  {id: 2, user_id: 1, club_id: 10, league: "Academy", name: "my sons shorts", item_type: "Shorts", color: "Light Green", size: "YM", number: "00", personalized: true, comment: "These comments are probably the best comments that a product has ever had.", condition: "New"},
  {id: 3, user_id: 2, club_id: 12, league: "Classic", name: "classic jersey 4 sale", item_type: "Jersey", color: "Gold", size: "YL", number: "6", personalized: false, comment: "These comments are probably the best comments that a product has ever had.", condition: "Used | poor"},
  {id: 4, user_id: 2, club_id: 2, league: "Challenge", name: "Chatham Challenge Shorts", item_type: "Shorts", color: "Cyan", size: "YS", number: "13", personalized: false, comment: "These comments are probably the best comments that a product has ever had.", condition: "New"},
  {id: 5, user_id: 3, club_id: 13, league: "Academy", name: "JUSA Jacket Ladies Small", item_type: "Warmup Jacket", color: "Green", size: "LS", number: "7", personalized: true, comment: "These comments are probably the best comments that a product has ever had.", condition: "Used | fair"},
  {id: 6, user_id: 3, club_id: 17, league: "Challenge", name: "Medium Shorts (Silver)", item_type: "Shorts", color: "Silver", size: "YM", number: "18", personalized: false, comment: "These comments are probably the best comments that a product has ever had.", condition: "New"},
  {id: 7, user_id: 4, club_id: 4, league: "Select", name: "Cleveland XL Jersey", item_type: "Jersey", color: "Blue", size: "XL", number: "4", personalized: false, comment: "These comments are probably the best comments that a product has ever had.", condition: "New"},
  {id: 8, user_id: 4, club_id: 19, league: "Classic", name: "ncu shirt", item_type: "Jersey", color: "Navy", size: "YXL", number: "3", personalized: true, comment: "These comments are probably the best comments that a product has ever had.", condition: "Used | poor"},
  {id: 9, user_id: 5, club_id: 5, league: "Challenge", name: "Pants", item_type: "Warmup Pants", color: "Orange", size: "YM", number: "12", personalized: false, comment: "These comments are probably the best comments that a product has ever had.", condition: "Like New"},
  {id: 10, user_id: 5, club_id: 22, league: "Academy", name: "New pair of socks", item_type: "Socks", color: "Yellow", size: "YS", number: "", personalized: false, comment: "These comments are probably the best comments that a product has ever had.", condition: "New"}
])
