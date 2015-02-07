json.array!(@orders) do |order|
  json.extract! order, :id, :status, :table_id
  json.url order_url(order, format: :json)
end
