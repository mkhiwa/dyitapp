json.extract! payment, :id, :product, :quantity, :amount, :status, :created_at, :updated_at
json.url payment_url(payment, format: :json)
