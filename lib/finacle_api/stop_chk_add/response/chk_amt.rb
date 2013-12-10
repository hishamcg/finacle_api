require 'finacle_api/common/serializable_object'

module FinacleApi
  module StopChkAdd
    module ResponseEntity
      class ChkAmt < SerializableObject
        attr_accessor :amount_value, :currency_code
      end
    end
  end
end