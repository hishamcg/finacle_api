require 'finacle_api/common/serializable_object' 
module FinacleApi
  module ODAcctInq
    module RequestEntity
      class ODAcctId < SerializableObject
        attr_accessor :acct_id

      end
    end
  end
end
