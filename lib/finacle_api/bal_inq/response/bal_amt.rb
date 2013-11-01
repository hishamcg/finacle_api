require 'finacle_api/common/serializable_object'

module FinacleApi
  module BalInq
    module ResponseEntity
      class BalAmt < SerializableObject
        attr_accessor :amount_value, :currency_code
      end
    end
  end
end