require 'finacle_api/common/serializable_object'

module FinacleApi
  module StopChkAdd
    module RequestEntity
      class StopChkInfo < SerializableObject
        attr_accessor :chk_num, :reason, :no_of_leaves, :advice_dt
      end
    end
  end
end
