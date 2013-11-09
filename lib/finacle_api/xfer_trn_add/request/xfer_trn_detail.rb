require 'finacle_api/common/serializable_object'
require 'finacle_api/xfer_trn_add/request/part_trn_rec'

module FinacleApi
  module XferTrnAdd
    module RequestEntity
      class XferTrnDetail < SerializableObject
        attr_accessor :credit_trn_rec, :debit_trn_rec

        def initialize(options={})
          options ||= {}
          @credit_trn_rec = PartTrnRec.new(options.delete(:credit_trn_rec))
          @debit_trn_rec = PartTrnRec.new(options.delete(:debit_trn_rec))
        end

      end
    end
  end
end