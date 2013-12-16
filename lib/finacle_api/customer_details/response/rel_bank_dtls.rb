require 'finacle_api/common/serializable_object'

module FinacleApi
  module CustomerDetails
    module ResponseEntity
      class RelBankDtls < SerializableObject
        attr_accessor :entity_creation_flag, :num_of_cr_cards
      end
    end
  end
end