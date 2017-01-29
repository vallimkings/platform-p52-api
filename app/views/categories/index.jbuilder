json.array! @categories do |category|
  json.id category.id
  json.name category.name
  json.icon category.icon
end
