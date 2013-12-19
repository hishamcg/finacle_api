require 'finacle_api/common/serializable_object' 
module FinacleApi
  module ODAcctInq
    module ResponseEntity
      class PersonName < SerializableObject
        attr_accessor :last_name, :first_name, :middle_name, :name, :title_prefix

      end
    end
  end
end
