require 'finacle_api/common/serializable_object' 
module FinacleApi
  module LoanAcctInq
    module ResponseEntity
      class ReschedParams < SerializableObject
        attr_accessor :resched_adj_tenor_amt_flg, :auto_resched_for_every_disb_flg, :auto_resched_for_int_rate_change, :resched_amt_flg, :auto_resched_prepayment_flg

      end
    end
  end
end
