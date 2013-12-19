require 'finacle_api/common/serializable_object' 
module FinacleApi
  module ODAcctInq
    module ResponseEntity
      class FloorLimitAmt < SerializableObject
        attr_accessor :amount_value, :currency_code

      end
    end
  end
end
