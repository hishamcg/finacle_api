require 'finacle_api/common/serializable_object' 
module FinacleApi
  module ODAcctInq
    module ResponseEntity
      class AcctBalAmt < SerializableObject
        attr_accessor :amount_value, :currency_code

      end
    end
  end
end
