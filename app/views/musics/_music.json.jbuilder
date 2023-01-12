json.extract! music, :id, :albumName, :performer, :genre, :price, :created_at, :updated_at
json.url music_url(music, format: :json)
