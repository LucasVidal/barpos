json.array!(@product_modifiers) do |product_modifier|
  json.extract! product_modifier, :id, :product_id, :modifier_id
  json.url product_modifier_url(product_modifier, format: :json)
end
