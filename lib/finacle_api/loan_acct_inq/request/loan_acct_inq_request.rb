require 'finacle_api/common/serializable_object' 
require 'finacle_api/loan_acct_inq/request/loan_acct_inq_rq' 
module FinacleApi
  module LoanAcctInq
    module RequestEntity
      class LoanAcctInqRequest < SerializableObject
        attr_accessor :loan_acct_inq_rq

        def initialize(options={})
          @loan_acct_inq_rq = LoanAcctInqRq.new(options.delete(:loan_acct_inq_rq))
        end
      end
    end
  end
end
