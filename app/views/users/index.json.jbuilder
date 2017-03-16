json.users @users do |user|
  json.ignore_nil!
  json.id user.id
  json.name user.name
  json.zip_code user.email
  json.phone user.phone
  json.image user.image

  json.kits user.kits do |kit|
    json.ignore_nil!
    json.id kit.id
    json.trans_type kit.trans_type
    json.price number_to_currency kit.price
    json.zip_code kit.zip_code
    json.league kit.league
    json.season kit.season
    json.comment kit.comment

      json.items kit.items do |item|
      json.ignore_nil!
      json.id item.id
      json.item_type item.item_type
      json.size item.size
      json.number item.number
      json.color item.color
      json.condition item.condition
    end
  end
end
