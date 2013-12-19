require 'finacle_api/common/serializable_object' 
module FinacleApi
  module LoanAcctInq
    module RequestEntity
      class LoanAcctId < SerializableObject
        attr_accessor :acct_id

      end
    end
  end
end
