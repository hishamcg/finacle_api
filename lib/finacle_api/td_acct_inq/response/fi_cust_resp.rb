require 'finacle_api/common/serializable_object' 
module FinacleApi
  module TDAcctInq
    module ResponseEntity
      class FICustResp < SerializableObject
        attr_accessor :interest_ytd, :account_branch

      end
    end
  end
end
