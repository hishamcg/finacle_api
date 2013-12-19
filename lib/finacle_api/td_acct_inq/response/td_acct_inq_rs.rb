require 'finacle_api/common/serializable_object' 
require 'finacle_api/td_acct_inq/response/td_acct_id' 
require 'finacle_api/td_acct_inq/response/cust_id' 
require 'finacle_api/td_acct_inq/response/td_acct_gen_info' 
require 'finacle_api/td_acct_inq/response/acct_bal_amt' 
require 'finacle_api/td_acct_inq/response/accr_int_rate' 
require 'finacle_api/td_acct_inq/response/net_int_rate' 
require 'finacle_api/td_acct_inq/response/total_int_amt' 
require 'finacle_api/td_acct_inq/response/initial_deposit' 
require 'finacle_api/td_acct_inq/response/curr_deposit' 
require 'finacle_api/td_acct_inq/response/orig_maturity_amt' 
require 'finacle_api/td_acct_inq/response/maturity_amt' 
require 'finacle_api/td_acct_inq/response/deposit_term' 
require 'finacle_api/td_acct_inq/response/repay_acct_id' 
require 'finacle_api/td_acct_inq/response/renewal_dtls' 
require 'finacle_api/td_acct_inq/response/rel_party_rec' 
module FinacleApi
  module TDAcctInq
    module ResponseEntity
      class TDAcctInqRs < SerializableObject
        attr_accessor :td_acct_id, :acct_opn_dt, :mode_of_oper, :bank_acct_status_code, :cust_id, :td_acct_gen_info, :acct_bal_cr_dr_ind, :acct_bal_amt, :freeze_status_code, :freeze_reason_code, :accr_int_dr_cr_ind, :accr_int_rate, :net_int_cr_dr_ind, :net_int_rate, :total_int_amt, :initial_deposit, :curr_deposit, :orig_maturity_amt, :maturity_amt, :deposit_term, :maturity_dt, :repay_acct_id, :renewal_dtls, :rel_party_rec

        def initialize(options={})
          options ||= {}
          @td_acct_id = TDAcctId.new(options.delete(:td_acct_id))
          @cust_id = CustId.new(options.delete(:cust_id))
          @td_acct_gen_info = TDAcctGenInfo.new(options.delete(:td_acct_gen_info))
          @acct_bal_amt = AcctBalAmt.new(options.delete(:acct_bal_amt))
          @accr_int_rate = AccrIntRate.new(options.delete(:accr_int_rate))
          @net_int_rate = NetIntRate.new(options.delete(:net_int_rate))
          @total_int_amt = TotalIntAmt.new(options.delete(:total_int_amt))
          @initial_deposit = InitialDeposit.new(options.delete(:initial_deposit))
          @curr_deposit = CurrDeposit.new(options.delete(:curr_deposit))
          @orig_maturity_amt = OrigMaturityAmt.new(options.delete(:orig_maturity_amt))
          @maturity_amt = MaturityAmt.new(options.delete(:maturity_amt))
          @deposit_term = DepositTerm.new(options.delete(:deposit_term))
          @repay_acct_id = RepayAcctId.new(options.delete(:repay_acct_id))
          @renewal_dtls = RenewalDtls.new(options.delete(:renewal_dtls))
          @rel_party_rec = RelPartyRec.new(options.delete(:rel_party_rec))

          options.each do |key, value|
          send(:"#{key}=", value) if respond_to?(:"#{key}=")
        end
      end
    end
  end
end
