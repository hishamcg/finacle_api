require 'finacle_api/common/serializable_object' 
require 'finacle_api/td_acct_inq/response/fi_cust_resp' 
module FinacleApi
  module TDAcctInq
    module ResponseEntity
      class TDAcctInq_CustomData < SerializableObject
        attr_accessor :fi_cust_resp

        def initialize(options={})
          @fi_cust_resp = FICustResp.new(options.delete(:fi_cust_resp))
        end
      end
    end
  end
end
