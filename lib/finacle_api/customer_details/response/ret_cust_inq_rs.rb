require 'finacle_api/common/serializable_object'
require 'finacle_api/customer_details/response/ret_cust_inq_rs'
require 'finacle_api/customer_details/response/ret_cust_inq_custom_data'

module FinacleApi
  module CustomerDetails
    module ResponseEntity
      class RetCustInqRs < SerializableObject
        attr_accessor :ret_cust_inq_rs, :ret_cust_inq_custom_data
        def initialize(options={})
          options ||= {}
          @ret_cust_inq_rs = RetCustInqRs.new(options.delete(:ret_cust_inq_rs))
          @ret_cust_inq_custom_data = RetCustInqCustomData.new(options.delete(:ret_cust_inq_custom_data))
        end
      end
    end
  end
end