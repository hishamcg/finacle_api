require 'finacle_api/common/serializable_object'
require 'finacle_api/xfer_trn_add/response/trn_identifier'

module FinacleApi
  module XferTrnAdd
    module ResponseEntity
      class XferTrnAddRs < SerializableObject
        attr_accessor :trn_identifier
        def initialize(options={})
          options ||= {}
          @trn_identifier = TrnIdentifier.new(options.delete(:trn_identifier))
        end
      end
    end
  end
end