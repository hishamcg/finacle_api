require 'finacle_api/common/serializable_object'

module FinacleApi
  module CustomerDetails
    module ResponseEntity
      class RetCustInqCustomData < SerializableObject
        attr_accessor :thb
      end
    end
  end
end