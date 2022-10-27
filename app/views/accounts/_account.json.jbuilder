json.extract! account, :id, :users, :nombre, :apellido, :mail, :deviceid, :created_at, :updated_at
json.url account_url(account, format: :json)
