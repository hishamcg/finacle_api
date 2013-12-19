require 'finacle_api/common/serializable_object' 
module FinacleApi
  module TDAcctInq
    module RequestEntity
      class TDAcctId < SerializableObject
        attr_accessor :acct_id

      end
    end
  end
end
