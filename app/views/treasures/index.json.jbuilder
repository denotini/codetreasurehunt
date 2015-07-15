json.array!(@treasures) do |treasure|
  json.extract! treasure, :id, :description, :status, :assignee
  json.url treasure_url(treasure, format: :json)
end
