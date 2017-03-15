  json.items @items do |item|
  json.ignore_nil!
  json.item_type item.item_type
  json.size item.size
  json.number item.number
  json.color item.color
  json.condition item.condition
  json.comment item.comment
end
