require "test_helper"

class CryptosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crypto = cryptos(:one)
  end

  test "should get index" do
    get cryptos_url
    assert_response :success
  end

  test "should get new" do
    get new_crypto_url
    assert_response :success
  end

  test "should create crypto" do
    assert_difference('Crypto.count') do
      post cryptos_url, params: { crypto: { day_close: @crypto.day_close, day_high: @crypto.day_high, day_low: @crypto.day_low, day_open: @crypto.day_open, minute_close: @crypto.minute_close, minute_high: @crypto.minute_high, minute_low: @crypto.minute_low, minute_open: @crypto.minute_open, name: @crypto.name, price: @crypto.price, symbol: @crypto.symbol } }
    end

    assert_redirected_to crypto_url(Crypto.last)
  end

  test "should show crypto" do
    get crypto_url(@crypto)
    assert_response :success
  end

  test "should get edit" do
    get edit_crypto_url(@crypto)
    assert_response :success
  end

  test "should update crypto" do
    patch crypto_url(@crypto), params: { crypto: { day_close: @crypto.day_close, day_high: @crypto.day_high, day_low: @crypto.day_low, day_open: @crypto.day_open, minute_close: @crypto.minute_close, minute_high: @crypto.minute_high, minute_low: @crypto.minute_low, minute_open: @crypto.minute_open, name: @crypto.name, price: @crypto.price, symbol: @crypto.symbol } }
    assert_redirected_to crypto_url(@crypto)
  end

  test "should destroy crypto" do
    assert_difference('Crypto.count', -1) do
      delete crypto_url(@crypto)
    end

    assert_redirected_to cryptos_url
  end
end
