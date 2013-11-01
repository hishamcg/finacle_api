require 'finacle_api/utils'
require 'finacle_api/common'
require 'finacle_api/bal_inq/request'
require 'finacle_api/bal_inq/response'

module FinacleApi
  module BalInq
    module API
      include FinacleApi::Utils

      def balance_inquiry(account_id, opts={})
        req = FinacleApi::BalInq::Request.new(
          :security_hash => send(:security_hash), 
          :account_id => account_id
        )
        p "payload => [#{req.payload}]"
        r = response_from(:post, FinacleApi::BalInq::Request::API_PATH, req.payload)["FIXML"]["Body"]
        convert_hash_keys(r)
        # FinacleApi::BalInq::Response.new(body_hash)
      end
    end
  end
end