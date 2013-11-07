require 'finacle_api/utils'
require 'finacle_api/common'
require 'finacle_api/bal_inq/request'
require 'finacle_api/bal_inq/response/bal_inq_response'

module FinacleApi
  module BalInq
    module API
      include FinacleApi::Utils

      def balance_inquiry(account_id, opts={})
        req = FinacleApi::BalInq::Request.new(
          :security_hash => send(:security_hash), 
          :account_id => account_id
        )
        response_body = response_from(:post, FinacleApi::BalInq::Request::API_PATH, req.xml_payload)["FIXML"]["Body"]
        body_hash = convert_hash_keys(response_body)
        # FinacleApi::BalInq::ResponseEntity::BalInqResponse.new(body_hash.delete(:bal_inq_response))
      end
    end
  end
end