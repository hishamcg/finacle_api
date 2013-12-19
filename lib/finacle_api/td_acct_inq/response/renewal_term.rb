require 'finacle_api/common/serializable_object' 
module FinacleApi
  module TDAcctInq
    module ResponseEntity
      class RenewalTerm < SerializableObject
        attr_accessor :days, :months

      end
    end
  end
end
