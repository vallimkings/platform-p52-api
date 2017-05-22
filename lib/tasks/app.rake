# namespace :app do
#   desc "TODO"
#   task seed: :environment do
#
#     User.create(email: "admin@gmail.com", name: "Admin Fodão", password: "admin")
#
#     provinces = [
#     {
#     	"acronym": "GO",
#     	"name": "Goiás"
#     },
#     {
#       "acronym": "MG",
#       "name": "Minas Gerais"
#     }
#   ]
#
#   province = Province.create(name: "Góias", acronym: "GO")
#   city = City.create(name: "Itumbiara", province_id: province.id)
#
#
#
#   Advertisement.create(address: "Av Afonso Pena", number: "1297", neighborhood: "Centro", zip_code: "38400200", name: "Chimarrão", description: "Carnes nobres", phone_number: "3232-3232",
#                                         cel_phone: "9191-9191", link_site: "restaurante.com.br", link_facebook: "facebook.com/restaurante", highlights: true, highlights_initial: DateTime.now,
#                                         highlights_duration: "10", status: true, category_id: 1, city_id: city.id)
#
#
#   Advertisement.create(address: "Av Afonso Pena", number: "1297", neighborhood: "Centro", zip_code: "38400200", name: "Porto Alegre", description: "Carnes nobres", phone_number: "3232-3232",
#                                         cel_phone: "9191-9191", link_site: "restaurante.com.br", link_facebook: "facebook.com/restaurante", highlights: true, highlights_initial: DateTime.now,
#                                         highlights_duration: "10", status: true, category_id: 1, city_id: city.id)
#
#
#   Advertisement.create(address: "Av Afonso Pena", number: "1297", neighborhood: "Centro", zip_code: "38400200", name: "Pin Grill", description: "Carnes nobres", phone_number: "3232-3232",
#                                       cel_phone: "9191-9191", link_site: "restaurante.com.br", link_facebook: "facebook.com/restaurante", highlights: true, highlights_initial: DateTime.now,
#                                       highlights_duration: "10", status: true, category_id: 1, city_id: city.id)
#
#
#   Advertisement.create(address: "Av Afonso Pena", number: "1297", neighborhood: "Centro", zip_code: "38400200", name: "Tropeiro", description: "Carnes nobres", phone_number: "3232-3232",
#                                       cel_phone: "9191-9191", link_site: "restaurante.com.br", link_facebook: "facebook.com/restaurante", highlights: true, highlights_initial: DateTime.now,
#                                       highlights_duration: "10", status: true, category_id: 1, city_id: city.id)
#
#
#
#
#   Advertisement.create(address: "Av Afonso Pena", number: "1297", neighborhood: "Centro", zip_code: "38400200", name: "Chevrolet", description: "Mecânica autorizada", phone_number: "3232-3232",
#                                       cel_phone: "9191-9191", link_site: "mecanico.com.br", link_facebook: "facebook.com/mecanico", highlights: true, highlights_initial: DateTime.now,
#                                       highlights_duration: "10", status: true, category_id: 2, city_id: city.id)
#
#
#   Advertisement.create(address: "Av Afonso Pena", number: "1297", neighborhood: "Centro", zip_code: "38400200", name: "Ford", description: "Mecânica autorizada", phone_number: "3232-3232",
#                                       cel_phone: "9191-9191", link_site: "mecanico.com.br", link_facebook: "facebook.com/mecanico", highlights: true, highlights_initial: DateTime.now,
#                                       highlights_duration: "10", status: true, category_id: 2, city_id: city.id)
#
#
#   Advertisement.create(address: "Av Afonso Pena", number: "1297", neighborhood: "Centro", zip_code: "38400200", name: "BMW", description: "Mecânica autorizada", phone_number: "3232-3232",
#                                   cel_phone: "9191-9191", link_site: "mecanico.com.br", link_facebook: "facebook.com/mecanico", highlights: true, highlights_initial: DateTime.now,
#                                   highlights_duration: "10", status: true, category_id: 2, city_id: city.id)
#
#
#   Advertisement.create(address: "Av Afonso Pena", number: "1297", neighborhood: "Centro", zip_code: "38400200", name: "Mercedes Benz", description: "Mecânica autorizada", phone_number: "3232-3232",
#                                   cel_phone: "9191-9191", link_site: "mecanico.com.br", link_facebook: "facebook.com/mecanico", highlights: true, highlights_initial: DateTime.now,
#                                   highlights_duration: "10", status: true, category_id: 2, city_id: city.id)
#
#
#
#
#
#
#   Advertisement.create(address: "Av Afonso Pena", number: "1297", neighborhood: "Centro", zip_code: "38400200", name: "Bee Gees", description: "Banda de Rock", phone_number: "3232-3232",
#                                       cel_phone: "9191-9191", link_site: "restaurante.com.br", link_facebook: "facebook.com/musica", highlights: true, highlights_initial: DateTime.now,
#                                       highlights_duration: "10", status: true, category_id: 9, city_id: city.id)
#
#
#   Advertisement.create(address: "Av Afonso Pena", number: "1297", neighborhood: "Centro", zip_code: "38400200", name: "Red Hot", description: "Banda de Rock", phone_number: "3232-3232",
#                                       cel_phone: "9191-9191", link_site: "musica.com.br", link_facebook: "facebook.com/musica", highlights: true, highlights_initial: DateTime.now,
#                                       highlights_duration: "10", status: true, category_id: 9, city_id: city.id)
#
#
#   Advertisement.create(address: "Av Afonso Pena", number: "1297", neighborhood: "Centro", zip_code: "38400200", name: "Guns", description: "Banda de Rock", phone_number: "3232-3232",
#                                   cel_phone: "9191-9191", link_site: "musica.com.br", link_facebook: "facebook.com/musica", highlights: true, highlights_initial: DateTime.now,
#                                   highlights_duration: "10", status: true, category_id: 9, city_id: city.id)
#
#
#   Advertisement.create(address: "Av Afonso Pena", number: "1297", neighborhood: "Centro", zip_code: "38400200", name: "U2", description: "Banda de Rock", phone_number: "3232-3232",
#                                   cel_phone: "9191-9191", link_site: "musica.com.br", link_facebook: "facebook.com/musica", highlights: true, highlights_initial: DateTime.now,
#                                   highlights_duration: "10", status: true, category_id: 9, city_id: city.id)
#
#
#
#   end
# end
