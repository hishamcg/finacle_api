require 'finacle_api/common/serializable_object' 
require 'finacle_api/td_acct_inq/request/td_acct_inq_rq' 
module FinacleApi
  module TDAcctInq
    module RequestEntity
      class TDAcctInqRequest < SerializableObject
        attr_accessor :td_acct_inq_rq

        def initialize(options={})
          @td_acct_inq_rq = TDAcctInqRq.new(options.delete(:td_acct_inq_rq))
        end
      end
    end
  end
end
