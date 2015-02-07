json.array!(@payments) do |payment|
  json.extract! payment, :id, :order_id, :amount, :payment_type
  json.url payment_url(payment, format: :json)
end
