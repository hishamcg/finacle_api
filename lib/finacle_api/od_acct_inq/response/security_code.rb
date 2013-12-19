require 'finacle_api/common/serializable_object' 
module FinacleApi
  module ODAcctInq
    module ResponseEntity
      class security_code < SerializableObject
        attr_accessor :code_desc, :code

      end
    end
  end
end
