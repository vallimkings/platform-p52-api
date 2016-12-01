json.array! @advertisements do |advertisement|
  json.id advertisement.id
  json.name advertisement.name
  json.address advertisement.address
  json.number advertisement.number
  json.neighborhood advertisement.neighborhood
  json.zip_code advertisement.zip_code
  json.description advertisement.description
  json.phone_number advertisement.phone_number
  json.cel_phone advertisement.cel_phone
  json.link_site advertisement.link_site
  json.link_facebook advertisement.link_facebook
  json.highlights advertisement.highlights
  json.highlights_initial advertisement.highlights_initial
  json.highlights_duration advertisement.highlights_duration
  json.status advertisement.status
  json.category_id advertisement.category_id
  json.category_name advertisement.category.name
  json.city_id advertisement.city_id
  json.city_name advertisement.city.name

  @images = Image.where("advertisement_id = ?", advertisement.id).all

  json.images do
    json.partial! "advertisements/images", iamges: @images
  end
end
