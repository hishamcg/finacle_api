require 'finacle_api/common/serializable_object'

module FinacleApi
  module CustomerDetails
    module ResponseEntity
      class SaleChannelDtls < SerializableObject
        attr_accessor :acct_curr_code, :acct_opening_dt, :acct_status, :acct_short_name, :cr_score_status, 
          :eligibility_results, :int_repayment_acct, :mode_of_operation, :poste_idsr_status, :pref_repayment_mode, 
          :repayment_acct_bank, :repayment_acct_id, :repayment_mode

      end
    end
  end
end