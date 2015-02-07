json.array!(@order_line_modifiers) do |order_line_modifier|
  json.extract! order_line_modifier, :id, :order_line_id, :modifier_id
  json.url order_line_modifier_url(order_line_modifier, format: :json)
end
