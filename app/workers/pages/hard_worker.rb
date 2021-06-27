class Pages::HardWorker
  include Sidekiq::Worker

  def perform(crypto)
    # Do something
    crypto = Cryptocompare::HistoMinute.find('DOGE', 'USD').map
    puts "** Sidekiq Job (CryptoGrab) ** Getting current cypto chart information."
  end
end
