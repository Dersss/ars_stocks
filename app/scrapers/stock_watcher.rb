require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(URI.open('https://www.tradingview.com/markets/stocks-usa/market-movers-large-cap')

table = page&.css('.tv-data-table')

rows = table.search('tr');

rows.each do |row|
    stock_content = row.search('td').map { |td| td.text.strip }
    stock_content[0]&.gsub!("\n\t\t\t\t\t\t\t\t\t", " ")
end

