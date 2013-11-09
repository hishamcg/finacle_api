require 'finacle_api/common/serializable_object'

module FinacleApi
  module XferTrnAdd
    module RequestEntity
      class XferTrnHdr < SerializableObject
        attr_accessor :trn_type, :trn_sub_type
      end
    end
  end
end