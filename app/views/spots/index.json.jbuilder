json.array!(@spots) do |spot|
  json.extract! spot, :id, :name, :location, :description, :type, :sound_level, :rating, :rating_count, :checkin_count
  json.url spot_url(spot, format: :json)
end
