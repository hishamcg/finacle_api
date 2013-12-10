require 'finacle_api/common/serializable_object'
require 'finacle_api/stop_chk_add/request/stop_chk_add_rq'

module FinacleApi
  module StopChkAdd
    module RequestEntity
      class StopChkAddRequest < SerializableObject
        attr_accessor :stop_chk_add_rq

        def initialize(option ={})
          options ||= {}
          @stop_chk_add_rq=StopChkAddRq.new(options.delete(:stop_chk_add_rq)
        end

      end
    end
  end
end

