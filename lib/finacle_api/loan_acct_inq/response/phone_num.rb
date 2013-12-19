require 'finacle_api/common/serializable_object' 
module FinacleApi
  module LoanAcctInq
    module ResponseEntity
      class PhoneNum < SerializableObject
        attr_accessor :telephone_num, :fax_num, :telex_num

      end
    end
  end
end
