json.array!(@order_audits) do |order_audit|
  json.extract! order_audit, :id, :order_id, :datetime, :status_from, :status_to
  json.url order_audit_url(order_audit, format: :json)
end
