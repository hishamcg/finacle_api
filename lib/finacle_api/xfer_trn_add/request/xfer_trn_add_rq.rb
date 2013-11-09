require 'finacle_api/common/serializable_object'
require 'finacle_api/xfer_trn_add/request/xfer_trn_detail'
require 'finacle_api/xfer_trn_add/request/xfer_trn_hdr'

module FinacleApi
  module XferTrnAdd
    module RequestEntity
      class XferTrnAddRequest < SerializableObject
        attr_accessor :xfer_trn_detail, :xfer_trn_hdr

        def initialize(options={})
          @xfer_trn_detail = XferTrnDetail.new(options.delete(:xfer_trn_detail))
          @xfer_trn_hdr = XferTrnHdr.new(options.delete(:xfer_trn_hdr))
        end

      end
    end
  end
end