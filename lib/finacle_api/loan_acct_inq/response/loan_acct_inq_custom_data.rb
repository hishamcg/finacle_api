require 'finacle_api/common/serializable_object' 
require 'finacle_api/loan_acct_inq/response/fi_cust_resp' 
module FinacleApi
  module LoanAcctInq
    module ResponseEntity
      class LoanAcctInq_CustomData < SerializableObject
        attr_accessor :fi_cust_resp

        def initialize(options={})
          @fi_cust_resp = FICustResp.new(options.delete(:fi_cust_resp))
        end
      end
    end
  end
end
