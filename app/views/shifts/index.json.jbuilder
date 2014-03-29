json.array!(@shifts) do |shift|
  json.extract! shift, :id, :title
  json.url shift_url(shift, format: :json)
end
