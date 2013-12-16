require 'finacle_api/utils'
require 'finacle_api/common'
require 'finacle_api/customer_details/request'
require 'finacle_api/customer_details/response/customer_details_aggregate'

module FinacleApi
  module CustomerDetails
    module API
      include FinacleApi::Utils
      include FinacleApi::Common
      def customer_details(cust_id, options={})
        req = FinacleApi::CustomerDetails::Request.new
        response_body = response_from(:get, FinacleApi::CustomerDetails::Request::API_PATH)["FIXML"]["Body"]
        body_hash = convert_hash_keys(response_body)
        customer_details_response_object(body_hash)
      end

      def customer_details_response_object(hash)
        # p "response body hash ~> [#{hash.inspect}]"
        if hash.has_key?(:error)
          error_object(hash)
        else
          FinacleApi::CustomerDetails::ResponseEntity::CustomerDetailsAggregate.new(hash.delete(:customer_details_aggregate))
        end
      end
    end
  end
end