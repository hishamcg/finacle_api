require 'finacle_api/common/serializable_object'
require 'finacle_api/stop_chk_add/response/stop_chk_add_rs'

module FinacleApi
  module StopChkAdd
    module ResponseEntity
      class StopChkAddResponse < SerializableObject
        attr_accessor :stop_chk_add_rs, :stop_chk_add_custom_data

        def initilize(option= {})
          option ||= {}
          @stop_chk_add_rs=StopChkAddRs.new(option.delete(:stop_chk_add_rs))
        end
      end
    end
  end
end