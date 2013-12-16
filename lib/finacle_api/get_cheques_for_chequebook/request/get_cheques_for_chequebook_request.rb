require 'finacle_api/common/serializable_object'
require 'finacle_api/get_cheques_for_chequebook/request/cheque_inquiry_criteria'

module FinacleApi
  module GetChequesForChequebook
    module RequestEntity
      class GetChequesForChequebookRequest < SerializableObject
        attr_accessor :cheque_inquiry_criteria

        def initialize(options={})
          @cheque_inquiry_criteria = ChequeInquiryCriteria.new(options.delete(:cheque_inquiry_criteria))
        end

      end
    end
  end
end