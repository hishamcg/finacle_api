require 'finacle_api/common/serializable_object' 
require 'finacle_api/loan_acct_inq/response/loan_acct_inq_rs' 
require 'finacle_api/loan_acct_inq/response/loan_acct_inq_custom_data' 
module FinacleApi
  module LoanAcctInq
    module ResponseEntity
      class LoanAcctInqResponse < SerializableObject
        attr_accessor :loan_acct_inq_rs, :loan_acct_inq_custom_data

        def initialize(options={})
          @loan_acct_inq_rs = LoanAcctInqRs.new(options.delete(:loan_acct_inq_rs))
          @loan_acct_inq_custom_data = LoanAcctInq_CustomData.new(options.delete(:loan_acct_inq_custom_data))
        end
      end
    end
  end
end
