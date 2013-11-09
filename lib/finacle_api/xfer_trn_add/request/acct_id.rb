require 'finacle_api/common/serializable_object'

module FinacleApi
  module XferTrnAdd
    module RequestEntity
      class AcctId < SerializableObject
        attr_accessor :acct_id
      end
    end
  end
end