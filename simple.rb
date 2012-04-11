require 'flickraw'

FlickRaw.api_key="424ca2d344deb8f86a06ca73f26c9aa8"
FlickRaw.shared_secret="0bad88d39b4792c3"

list   = flickr.photos.search :tags => "cat"

id     = list[0].id
secret = list[0].secret
info = flickr.photos.getInfo :photo_id => id, :secret => secret

puts info.title           # => "PICT986"
puts info.dates.taken     # => "2006-07-06 15:16:18"
puts id

info = flickr.photos.getInfo :photo_id => id

puts FlickRaw.url_b(info)

