json.array!(@modifiers) do |modifier|
  json.extract! modifier, :id, :name, :price
  json.url modifier_url(modifier, format: :json)
end
