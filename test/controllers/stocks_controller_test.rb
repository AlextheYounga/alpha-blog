require 'savon'
require 'test_helper'

class StocksControllerTest < ActionController::TestCase
    
ondemand = Savon.client(wsdl: 'https://marketdata.websol.barchart.com/service?wsdl')

response = ondemand.call(
    :get_quote,
    message: {
        apikey: '410b21ba04cfe6348b81cb0abc270d70',
        symbols: 'AAPL,GOOG',
        fields: 'fiftyTwoWkHigh,fiftyTwoWkHighDate,fiftyTwoWkLow,fiftyTwoWkLowDate',
    }
)

    test "should get response" do
       get response
       assert_response :success
    end

end