class PagesController < ApplicationController
  def index
    StockQuote::Stock.new(api_key: 'sk_971f54cd2c014652bb9520c8bf7e0e41')
    @owned_stocks = []
    @owned_stocks << StockQuote::Stock.quote("wish")
    @owned_stocks << StockQuote::Stock.quote("bbig")
    @owned_stocks << StockQuote::Stock.quote("aht")
    @owned_stocks << StockQuote::Stock.quote("adt")
    @crypto = Cryptocompare::Price.find('DOGE', 'USD')
    
    
  end

  def charts
    StockQuote::Stock.new(api_key: 'pk_12b5bfb9e9b14d7eb811366a1b940639')

    @chosen_stock_data = 'DOGE'
    @cp = Cryptocompare::HistoMinute.find(@chosen_stock_data, 'USD').fetch("Data")
    @timestamps = @cp.pluck("time")
    @points = @cp.pluck("open", "high", "low", "close")
    @chart_data = []
    @index = 0
    while @chart_data.length < @timestamps.length do
      @timestamps[@index] = Time.at(@timestamps[@index]).to_datetime
      @chart_data << [@timestamps[@index], @points[@index]]
      @index += 1
    end
    

    @wish_data = StockQuote::Stock.chart("blin")
    @wish = @wish_data.chart.pluck("updated")
    @wish2 = @wish_data.chart.pluck( "open", "high", "low", "close")
    @chart_data2 = []
    @index2 = 0
    while @chart_data2.length < @wish.length do
      # @wish[@index2] = Time.at(@wish[@index2])
      @chart_data2 << [@wish[@index2], @wish2[@index2]]
      @index2 += 1
    end
  end

  def crypto_chart(name)
    @wish_data = StockQuote::Stock.chart(name)
    @wish = @wish_data.chart.pluck("updated")
    @wish2 = @wish_data.chart.pluck( "open", "high", "low", "close")
    @chart_data2 = []
    @index2 = 0
    while @chart_data2.length < @wish.length do
      # @wish[@index2] = Time.at(@wish[@index2])
      @chart_data2 << [@wish[@index2], @wish2[@index2]]
      @index2 += 1
    end
    render :partial => "chart", :locals => {name: name, data: @chart_data2}
  end

  def stock_chart(name)
    @chosen_stock_data = name
    @cp = Cryptocompare::HistoMinute.find(@chosen_stock_data, 'USD').fetch("Data")
    @timestamps = @cp.pluck("time")
    @points = @cp.pluck("open", "high", "low", "close")
    @chart_data = []
    @index = 0
    while @chart_data.length < @timestamps.length do
      @timestamps[@index] = Time.at(@timestamps[@index]).to_datetime
      @chart_data << [@timestamps[@index], @points[@index]]
      @index += 1
    end
    render :partial => "chart", :locals => {name: name, data: @chart_data}
  end
 
  private

    def pages_params
      params.require(:page).permit(:crypto, :chart_data)
    end

end
