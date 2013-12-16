require 'finacle_api/common/serializable_object'

module FinacleApi
  module DeDuplicationInq
    module ResponseEntity
      class RecCtrlOut < SerializableObject
        attr_accessor :max_rec, :set_num
      end
    end
  end
end