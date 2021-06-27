json.extract! position, :id, :symbol, :number_of_positions, :purchase_date, :price, :bought_price, :day_change, :minute_change, :created_at, :updated_at
json.url position_url(position, format: :json)
