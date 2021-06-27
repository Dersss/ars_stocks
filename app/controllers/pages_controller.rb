class PagesController < ApplicationController
  def home
    StockQuote::Stock.new(api_key: 'sk_971f54cd2c014652bb9520c8bf7e0e41')
    @owned_stocks = []
    @owned_stocks << StockQuote::Stock.quote("wish")
    @owned_stocks << StockQuote::Stock.quote("bbig")
    @owned_stocks << StockQuote::Stock.quote("aht")
    @owned_stocks << StockQuote::Stock.quote("adt")
    @crypto = Cryptocompare::Price.find('DOGE', 'USD')
    
    
  end

  def charts
    @chosen_stock_data = 'DOGE'
    @cp = Cryptocompare::HistoMinute.find(@chosen_stock_data, 'USD').fetch("Data")
    @timestamps = @cp.pluck("time")
    @points = @cp.pluck("open", "high", "low", "close")
    @chart_data = []
    @index = 0
    while @chart_data.length < @timestamps.length do
      @chart_data << [@timestamps[@index], @points[@index]]
      @index += 1
    end
    console
  end
 
  private

    def pages_params
      params.require(:page).permit(:crypto, :chart_data)
    end

end
