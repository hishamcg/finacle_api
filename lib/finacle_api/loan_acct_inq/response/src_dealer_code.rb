require 'finacle_api/common/serializable_object' 
module FinacleApi
  module LoanAcctInq
    module ResponseEntity
      class SrcDealerCode < SerializableObject
        attr_accessor :dsa_id, :dsa_name

      end
    end
  end
end
