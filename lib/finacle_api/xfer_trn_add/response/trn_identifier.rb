require 'finacle_api/common/serializable_object'

module FinacleApi
  module XferTrnAdd
    module ResponseEntity
      class TrnIdentifier < SerializableObject
        attr_accessor :trn_dt, :trn_id
      end
    end
  end
end