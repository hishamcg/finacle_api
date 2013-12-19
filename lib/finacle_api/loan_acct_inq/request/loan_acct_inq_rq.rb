require 'finacle_api/common/serializable_object' 
require 'finacle_api/loan_acct_inq/request/loan_acct_id' 
module FinacleApi
  module LoanAcctInq
    module RequestEntity
      class LoanAcctInqRq < SerializableObject
        attr_accessor :loan_acct_id

        def initialize(options={})
          @loan_acct_id = LoanAcctId.new(options.delete(:loan_acct_id))
        end
      end
    end
  end
end
