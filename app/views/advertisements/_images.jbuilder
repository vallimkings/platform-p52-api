json.array! @images do |image|
  json.id image.id
  json.title image.title
  json.description image.description
  json.url image.avatar.url(:medium)
  json.thumb_url image.avatar.url(:thumb)
end
