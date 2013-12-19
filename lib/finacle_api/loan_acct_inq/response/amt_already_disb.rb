require 'finacle_api/common/serializable_object' 
module FinacleApi
  module LoanAcctInq
    module ResponseEntity
      class AmtAlreadyDisb < SerializableObject
        attr_accessor :amount_value, :currency_code

      end
    end
  end
end
