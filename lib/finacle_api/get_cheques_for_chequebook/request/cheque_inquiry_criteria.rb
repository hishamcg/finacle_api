require 'finacle_api/common/serializable_object'

module FinacleApi
  module GetChequesForChequebook
    module RequestEntity
      class ChequeInquiryCriteria < SerializableObject
        attr_accessor :acid, :begin_cheque_number, :branch_id, :end_cheque_number
      end
    end
  end
end