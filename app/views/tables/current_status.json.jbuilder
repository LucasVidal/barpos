json.array!(@tables_with_order) do |(table, order)|
  json.extract! table, :id, :name
  if (order) 
  	json.order_id order.id
  end

end
