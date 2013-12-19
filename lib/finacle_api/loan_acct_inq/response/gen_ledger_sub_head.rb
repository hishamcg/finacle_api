require 'finacle_api/common/serializable_object' 
module FinacleApi
  module LoanAcctInq
    module ResponseEntity
      class GenLedgerSubHead < SerializableObject
        attr_accessor :gen_ledger_sub_head_code, :cur_code

      end
    end
  end
end
