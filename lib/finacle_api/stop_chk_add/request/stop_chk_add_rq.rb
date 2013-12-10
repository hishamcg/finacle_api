require 'finacle_api/common/serializable_object'
require 'finacle_api/stop_chk_add/request/stop_chk_info'
require 'finacle_api/stop_chk_add/request/acct_id'

module FinacleApi
  module StopChkAdd
    module RequestEntity
      class StopChkAddRq < SerializableObject
        attr_accessor :stop_chk_info, :acct_id

        def initialize(option ={})
          options ||= {}
          @stop_chk_info= StopChkInfo.new(options.delete(:stop_chk_info))
          @acct_id=AcctId.new(options.delete(:acct_id))
        end

      end
    end
  end
end