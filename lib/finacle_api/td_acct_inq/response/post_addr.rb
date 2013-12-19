require 'finacle_api/common/serializable_object' 
module FinacleApi
  module TDAcctInq
    module ResponseEntity
      class PostAddr < SerializableObject
        attr_accessor :addr1, :addr2, :addr3, :city, :state_prov, :postal_code, :country, :addr_type

      end
    end
  end
end
