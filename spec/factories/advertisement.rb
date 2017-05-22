FactoryGirl.define do

  factory :advertisement do
    address "Addres"
    number "123"
    neighborhood "centro"
    zip_code "122222"
    name ""
    description "description"
    phone_number "9191-9191"
    cel_phone "9191-9191"
    link_site "www.google.com"
    link_facebook "www.google.com"
    highlights true
    highlights_initial Time.now
    highlights_duration 10
    status true
  end
end
