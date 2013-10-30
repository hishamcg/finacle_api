require 'finacle_api/utils'
require 'finacle_api/common'
require 'finacle_api/bal_inq'

module FinacleApi
  module Base
    include FinacleApi::Utils

    def balance_inquiry(account_id, opts={})
      security_hash = send(:security_hash)
      payload = FinacleApi::BalInq::Request.new.payload(:security_hash => security_hash, :account_id => account_id)
      p "payload => [#{payload.fixml}]"
      response_from(FinacleApi::Common::FIXML, :post, '/BalInq', payload.fixml)
    end

    def retail_customer_account_inquiry(customer_id, opts={})
      # TODO
      p "Unimplemented API Call"
    end
  end
end