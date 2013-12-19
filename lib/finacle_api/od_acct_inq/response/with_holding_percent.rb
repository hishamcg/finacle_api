require 'finacle_api/common/serializable_object' 
module FinacleApi
  module ODAcctInq
    module ResponseEntity
      class WithHoldingPercent < SerializableObject
        attr_accessor :value

      end
    end
  end
end
