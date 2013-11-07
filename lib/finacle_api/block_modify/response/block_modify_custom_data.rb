require 'finacle_api/common/serializable_object'

module FinacleApi
  module BlockModify
    module ResponseEntity
      class BlockModifyCustomData < SerializableObject
        attr_accessor :thb
      end
    end
  end
end