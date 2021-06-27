json.extract! stock, :id, :name, :symbol, :type, :price, :day_open, :day_close, :minute_open, :minute_close, :day_high, :day_low, :minute_high, :minute_low, :created_at, :updated_at
json.url stock_url(stock, format: :json)
