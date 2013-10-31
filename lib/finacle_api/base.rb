require 'open-uri'
require 'finacle_api/utils'
require 'finacle_api/common'
require 'finacle_api/bal_inq'

module FinacleApi
  module Base
    include FinacleApi::Utils

    def balance_inquiry(account_id, opts={})
      payload = FinacleApi::BalInq::Request.new.payload(
        :security_hash => send(:security_hash), 
        :account_id => account_id
      )
      p "payload => [#{URI::encode(payload.fixml('BalInq'))}]"
      # contents = File.read('/mnt/code/xbit/common/finacle_api/examples/views/bal_inq_request.xml')
      p "..........................................."
      # p "file contents urlencode => [#{URI::encode(contents.squeeze(" "))}]"
      # response_from(FinacleApi::Common::FIXML, :post, FinacleApi::BalInq::Request::API_PATH, URI::encode(payload.fixml('BalInq')))
      response_from(FinacleApi::Common::FIXML, :post, FinacleApi::BalInq::Request::API_PATH, payload.fixml('BalInq'))
    end

    def retail_customer_account_inquiry(customer_id, opts={})
      # TODO
      p "Unimplemented API Call"
    end
  end
end