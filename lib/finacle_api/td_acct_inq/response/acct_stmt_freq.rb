require 'finacle_api/common/serializable_object' 
module FinacleApi
  module TDAcctInq
    module ResponseEntity
      class AcctStmtFreq < SerializableObject
        attr_accessor :cal, :type, :start_dt, :week_day, :week_num, :hol_stat

      end
    end
  end
end
