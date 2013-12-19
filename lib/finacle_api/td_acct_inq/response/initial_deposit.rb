require 'finacle_api/common/serializable_object' 
module FinacleApi
  module TDAcctInq
    module ResponseEntity
      class InitialDeposit < SerializableObject
        attr_accessor :amount_value, :currency_code

      end
    end
  end
end
