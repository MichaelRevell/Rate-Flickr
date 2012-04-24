namespace :flicker do
  task :seed => :environment do
      FlickRaw.api_key="424ca2d344deb8f86a06ca73f26c9aa8"
      FlickRaw.shared_secret="0bad88d39b4792c3"

      list   = flickr.photos.search :tags => "kitten"

      for num in 0..20
        puts "-------- Image #{num} --------"
        id     = list[num].id
        secret = list[num].secret
        info = flickr.photos.getInfo :photo_id => id, :secret => secret

        puts info.title           # => "PICT986"
        puts info.dates.taken     # => "2006-07-06 15:16:18"
        if Image.create(:imageId => id)
          puts "Image with flicker id #{id} created"
        end
      end
  end
end