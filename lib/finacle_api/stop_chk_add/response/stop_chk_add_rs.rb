require 'finacle_api/common/serializable_object'
require 'finacle_api/stop_chk_add/response/stop_chk_info'
require 'finacle_api/stop_chk_add/response/chk_amt'

module FinacleApi
  module StopChkAdd
    module ResponseEntity
      class StopChkAddRs < SerializableObject
        attr_accessor :stop_chk_info, :chk_amt, :chk_status_recs
        def initialize(options={})
          options ||= {}
          @stop_chk_info = StopChkInfo.new(options.delete(:stop_chk_info))
          chk_status_recs = options.delete(:chk_status_rec)
          if chk_status_recs and chk_status_recs.is_a?(Array)
            @chk_status_recs = chk_status_rec.map { |status| ChkStatusRec.new(status) }
          end
        end
      end
    end
  end
end