json.array!(@activities) do |activity|
  json.extract! activity, :id, :title, :vol, :shift_id
  json.url activity_url(activity, format: :json)
end
