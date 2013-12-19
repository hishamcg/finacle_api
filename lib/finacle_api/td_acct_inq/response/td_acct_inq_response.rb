require 'finacle_api/common/serializable_object' 
require 'finacle_api/td_acct_inq/response/td_acct_inq_rs' 
require 'finacle_api/td_acct_inq/response/td_acct_inq_custom_data' 
module FinacleApi
  module TDAcctInq
    module ResponseEntity
      class TDAcctInqResponse < SerializableObject
        attr_accessor :td_acct_inq_rs, :td_acct_inq_custom_data

        def initialize(options={})
          @td_acct_inq_rs = TDAcctInqRs.new(options.delete(:td_acct_inq_rs))
          @td_acct_inq_custom_data = TDAcctInq_CustomData.new(options.delete(:td_acct_inq_custom_data))
        end
      end
    end
  end
end
