require 'finacle_api/common/serializable_object' 
module FinacleApi
  module TDAcctInq
    module ResponseEntity
      class AcctType < SerializableObject
        attr_accessor :schm_code, :schm_type

      end
    end
  end
end
