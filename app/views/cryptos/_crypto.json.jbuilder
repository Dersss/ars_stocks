json.extract! crypto, :id, :name, :symbol, :price, :day_open, :day_close, :minute_open, :minute_close, :day_high, :day_low, :minute_high, :minute_low, :created_at, :updated_at
json.url crypto_url(crypto, format: :json)
