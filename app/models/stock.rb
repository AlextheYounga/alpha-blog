class Stock < ActiveRecord::Base

require 'savon'

ondemand = Savon.client(wsdl: 'https://marketdata.websol.barchart.com/service?wsdl')

response = ondemand.call(
    :getQuote,
    message: {
        apikey: '410b21ba04cfe6348b81cb0abc270d70',
        symbols: 'AAPL,GOOG',
        fields: 'fiftyTwoWkHigh,fiftyTwoWkHighDate,fiftyTwoWkLow,fiftyTwoWkLowDate',
    }
)

 response.body

end
