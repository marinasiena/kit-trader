json.clubs @clubs do |club|
  json.ignore_nil!
  json.long_name club.long_name
  json.location club.location
  json.image club.image

  json.kits club.kits do |kit|
    json.ignore_nil!
    json.trans_type kit.trans_type
    json.price number_to_currency kit.price
    json.zip_code kit.zip_code
    json.league kit.league
    json.season kit.season

      json.items kit.items do |item|
      json.ignore_nil!
      json.item_type item.item_type
      json.size item.size
      json.number item.number
      json.color item.color
      json.condition item.condition
      json.comment item.comment
    end
  end
end
