class PagesController < ApplicationController
  def home
    StockQuote::Stock.new(api_key: 'sk_971f54cd2c014652bb9520c8bf7e0e41')
    @owned_stocks = []
    @owned_stocks << StockQuote::Stock.quote("ivr")
    @owned_stocks << StockQuote::Stock.quote("bbig")
    @owned_stocks << StockQuote::Stock.quote("aht")
    @owned_stocks << StockQuote::Stock.quote("adt")
    @owned_stocks << StockQuote::Stock.quote("gnw")
    
  end
end
