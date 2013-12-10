require 'finacle_api/common/serializable_object'

module FinacleApi
  module StopChkAdd
    module ResponseEntity
      class ChkStatusRec < SerializableObject
        attr_accessor :chk_num, :chk_status
      end
    end
  end
end