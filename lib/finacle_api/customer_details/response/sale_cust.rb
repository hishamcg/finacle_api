require 'finacle_api/common/serializable_object'

module FinacleApi
  module CustomerDetails
    module ResponseEntity
      class SaleCust < SerializableObject
        attr_accessor :role
      end
    end
  end
end