require 'finacle_api/common/serializable_object' 
module FinacleApi
  module TDAcctInq
    module ResponseEntity
      class PhoneNum < SerializableObject
        attr_accessor :telephone_num, :fax_num, :telex_num

      end
    end
  end
end
