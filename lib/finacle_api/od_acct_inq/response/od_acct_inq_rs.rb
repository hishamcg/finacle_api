require 'finacle_api/common/serializable_object' 
require 'finacle_api/od_acct_inq/response/od_acct_inq' 
require 'finacle_api/od_acct_inq/response/cust_id' 
require 'finacle_api/od_acct_inq/response/od_acct_gen_info' 
require 'finacle_api/od_acct_inq/response/acct_bal_amt' 
require 'finacle_api/od_acct_inq/response/accr_int_rate' 
require 'finacle_api/od_acct_inq/response/int_calc_freq' 
require 'finacle_api/od_acct_inq/response/net_int_rate' 
require 'finacle_api/od_acct_inq/response/with_holding_tax_dtls' 
require 'finacle_api/od_acct_inq/response/rel_party_rec' 
require 'finacle_api/od_acct_inq/response/basel' 
module FinacleApi
  module ODAcctInq
    module ResponseEntity
      class ODAcctInqRs < SerializableObject
        attr_accessor :od_acct_inq, :acct_opn_dt, :mode_of_oper, :bank_acct_status_code, :cust_id, :od_acct_gen_info, :acct_bal_cr_dr_ind, :acct_bal_amt, :freeze_status_code, :freeze_reason_code, :accr_int_cr_dr_ind, :accr_int_rate, :int_calc_freq, :int_rate_code, :net_int_dr_cr_ind, :net_int_rate, :with_holding_tax_dtls, :rel_party_rec, :basel

        def initialize(options={})
          options ||= {}
          @od_acct_inq = ODAcctInq.new(options.delete(:od_acct_inq))
          @cust_id = CustId.new(options.delete(:cust_id))
          @od_acct_gen_info = ODAcctGenInfo.new(options.delete(:od_acct_gen_info))
          @acct_bal_amt = AcctBalAmt.new(options.delete(:acct_bal_amt))
          @accr_int_rate = AccrIntRate.new(options.delete(:accr_int_rate))
          @int_calc_freq = IntCalcFreq.new(options.delete(:int_calc_freq))
          @net_int_rate = NetIntRate.new(options.delete(:net_int_rate))
          @with_holding_tax_dtls = WithHoldingTaxDtls.new(options.delete(:with_holding_tax_dtls))
          @rel_party_rec = RelPartyRec.new(options.delete(:rel_party_rec))
          @basel = basel.new(options.delete(:basel))

          options.each do |key, value|
          send(:"#{key}=", value) if respond_to?(:"#{key}=")
        end
      end
    end
  end
end
