json.array!(@users) do |user|
  json.extract! user, :id, :uname, :ip_adr
  json.url user_url(user, format: :json)
end
