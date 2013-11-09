require 'finacle_api/common/serializable_object'

module FinacleApi
  module XferTrnAdd
    module RequestEntity
      # <PmtInst>
      #   <PmtInstDt>2014-02-14T00:00:00.000</PmtInstDt>
      #   <PmtInstAlpha>!</PmtInstAlpha>
      #   <PmtInstNum>8</PmtInstNum>
      #   <PmtInstType>CHQ</PmtInstType>
      # </PmtInst>
      class PmtInst < SerializableObject
        attr_accessor :pmt_inst_dt, :pmt_inst_alpha, :pmt_inst_num, :pmt_inst_type
      end
    end
  end
end