require 'finacle_api/common/serializable_object' 
require 'finacle_api/od_acct_inq/request/od_acct_inq_rq' 
module FinacleApi
  module ODAcctInq
    module RequestEntity
      class ODAcctInqRequest < SerializableObject
        attr_accessor :od_acct_inq_rq

        def initialize(options={})
          @od_acct_inq_rq = ODAcctInqRq.new(options.delete(:od_acct_inq_rq))
        end
      end
    end
  end
end
