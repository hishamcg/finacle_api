require 'finacle_api/common/serializable_object' 
require 'finacle_api/td_acct_inq/request/td_acct_id' 
module FinacleApi
  module TDAcctInq
    module RequestEntity
      class TDAcctInqRq < SerializableObject
        attr_accessor :td_acct_id

        def initialize(options={})
          @td_acct_id = TDAcctId.new(options.delete(:td_acct_id))
        end
      end
    end
  end
end
