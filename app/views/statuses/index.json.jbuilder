json.array!(@statuses) do |status|
  json.extract! status, :id, :user_id, :spot_id, :description
  json.url status_url(status, format: :json)
end
