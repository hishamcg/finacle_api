require 'finacle_api/common/serializable_object'

module FinacleApi
  module CustomerDetails
    module ResponseEntity
      class ProductDtlsInfo < SerializableObject
        attr_accessor :product_feature
      end
    end
  end
end