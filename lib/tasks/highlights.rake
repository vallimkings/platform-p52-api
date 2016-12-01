namespace :highlights do
  desc "highlights check"
  task check: :environment do
    advertisements = Advertisement.where(highlights: true)
       advertisements.each do |adv|
         adv.highlights = false unless adv.highlights_initial + adv.highlights_duration.to_i.days > Time.now
         adv.save!
     end
   end
end
