require 'finacle_api/common/serializable_object'
require 'finacle_api/xfer_trn_add/request/xfer_trn_add_rq'

module FinacleApi
  module XferTrnAdd
    module RequestEntity
      class XferTrnAddRequest < SerializableObject
        attr_accessor :xfer_trn_add_rq

        def initialize(options={})
          @xfer_trn_add_rq = XferTrnAddRq.new(options.delete(:xfer_trn_add_rq))
        end

      end
    end
  end
end