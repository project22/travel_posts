json.array!(@locations) do |location|
  json.extract! location, :latitude, :longitude, :name, :user_id
  json.url location_url(location, format: :json)
end
