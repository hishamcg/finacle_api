require 'finacle_api/common/serializable_object'
require 'finacle_api/xfer_trn_add/response/xfer_trn_add_rs'
require 'finacle_api/xfer_trn_add/response/xfer_trn_add_custom_data'

module FinacleApi
  module XferTrnAdd
    module ResponseEntity
      class XferTrnAddResponse < SerializableObject
        attr_accessor :xfer_trn_add_rs, :xfer_trn_add_custom_data
        def initialize(options={})
          options ||= {}
          @xfer_trn_add_rs = XferTrnAddRs.new(options.delete(:xfer_trn_add_rs))
          @xfer_trn_add_custom_data = XferTrnAddCustomData.new(options.delete(:xfer_trn_add_custom_data))
        end
      end
    end
  end
end