require 'finacle_api/common/serializable_object'
require 'finacle_api/customer_details/response/ret_cust_inq_response'
require 'finacle_api/customer_details/response/ret_cust_acct_inq_response'

module FinacleApi
  module CustomerDetails
    module ResponseEntity
      class CustomerDetailsAggregate < SerializableObject
        attr_accessor :ret_cust_acct_inq_response, :ret_cust_inq_response
        def initialize(options={})
          options ||= {}
          @ret_cust_acct_inq_response = RetCustAcctInqResponse.new(options.delete(:ret_cust_acct_inq_response))
          @ret_cust_inq_response = RetCustInqResponse.new(options.delete(:ret_cust_inq_response))
        end
      end
    end
  end
end