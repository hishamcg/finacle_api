require 'finacle_api/common/serializable_object' 
module FinacleApi
  module LoanAcctInq
    module ResponseEntity
      class FICustResp < SerializableObject
        attr_accessor :interest_last_year, :last_payment_amount, :date_last_payment, :status

      end
    end
  end
end
