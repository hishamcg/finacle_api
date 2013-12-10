require 'finacle_api/common/serializable_object'

module FinacleApi
  module StopChkAdd
    module ResponseEntity
      class StopChkInfo < SerializableObject
        attr_accessor :chk_num, :reason, :no_of_leaves, :name
      end
    end
  end
end