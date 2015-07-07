json.array!(@treasures) do |treasure|
  json.extract! treasure, :id, :description, :status
  json.url treasure_url(treasure, format: :json)
end
