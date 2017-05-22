json.extract! @advertisement, :id, :address, :number, :neighborhood, :zip_code, :name, :description, :phone_number, :cel_phone, :link_site, :link_facebook, :highlights, :highlights_initial, :highlights_duration, :status, :category_id

@images = Image.where("advertisement_id = ?", @advertisement.id).all

json.images do
  json.partial! "advertisements/images", iamges: @images
end
