require 'finacle_api/common/serializable_object' 
require 'finacle_api/od_acct_inq/request/od_acct_id' 
module FinacleApi
  module ODAcctInq
    module RequestEntity
      class ODAcctInqRq < SerializableObject
        attr_accessor :od_acct_id

        def initialize(options={})
          @od_acct_id = ODAcctId.new(options.delete(:od_acct_id))
        end
      end
    end
  end
end
