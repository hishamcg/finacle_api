require 'finacle_api/utils'
require 'finacle_api/common'
require 'finacle_api/bal_inq'

module FinacleApi
  module Base
    include FinacleApi::Utils

    def balance_inquiry(account_id, opts={})
      security_header = send(:security)
      request_message_info = FinacleApi::Common::RequestMessageInfo.new
      message_key = FinacleApi::Common::MessageKey.new

      header = FinacleApi::Common::RequestHeader.new(
        :security => security_header, 
        :message_key => message_key, 
        :request_message_info => request_message_info
      )

      bal_inq_request = FinacleApi::BalInq::BalInqRequest.new(account_id)

      payload = FinacleApi::Common::FIXML.new(
        :header => header, 
        :body => {:bal_inq_request => bal_inq_request}
      )

      # objects_from_response(FinacleApi::BalInq::Response, :post, '/BalInq', payload)
    end

    def retail_customer_account_inquiry(customer_id, opts={})
      # TODO
      p "Unimplemented API Call"
    end
  end
end