json.array!(@payment_audits) do |payment_audit|
  json.extract! payment_audit, :id, :payment_id, :amount_from, :amount_to, :payment_type_from, :payment_type_to, :datetime
  json.url payment_audit_url(payment_audit, format: :json)
end
