require 'finacle_api/common/serializable_object' 
module FinacleApi
  module TDAcctInq
    module ResponseEntity
      class NetIntRate < SerializableObject
        attr_accessor :value

      end
    end
  end
end
