json.extract! transaction, :id, :user_email, :amount, :user_id, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
