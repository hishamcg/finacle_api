require 'finacle_api/common/serializable_object' 
require 'finacle_api/loan_acct_inq/response/loan_acct_id' 
require 'finacle_api/loan_acct_inq/response/net_int_rate' 
require 'finacle_api/loan_acct_inq/response/cust_id' 
require 'finacle_api/loan_acct_inq/response/loan_acct_gen_info' 
require 'finacle_api/loan_acct_inq/response/amt_already_disb' 
require 'finacle_api/loan_acct_inq/response/amt_avail_for_disb' 
require 'finacle_api/loan_acct_inq/response/disb_amt' 
require 'finacle_api/loan_acct_inq/response/src_dealer_code' 
require 'finacle_api/loan_acct_inq/response/disb_dealer_code' 
require 'finacle_api/loan_acct_inq/response/loan_gen_details' 
require 'finacle_api/loan_acct_inq/response/ach_details' 
require 'finacle_api/loan_acct_inq/response/multi_src_instruction_rec' 
require 'finacle_api/loan_acct_inq/response/rel_party_rec' 
module FinacleApi
  module LoanAcctInq
    module ResponseEntity
      class LoanAcctInqRs < SerializableObject
        attr_accessor :loan_acct_id, :net_int_rate, :acct_open_dt, :mode_of_oper, :cust_id, :loan_acct_gen_info, :amt_already_disb, :amt_avail_for_disb, :disb_amt, :src_dealer_code, :disb_dealer_code, :loan_gen_details, :ach_details, :multi_src_instruction_recs, :rel_party_recs, :ei_schm_flg

        def initialize(options={})
          options ||= {}
          @loan_acct_id = LoanAcctId.new(options.delete(:loan_acct_id))
          @net_int_rate = NetIntRate.new(options.delete(:net_int_rate))
          @cust_id = CustId.new(options.delete(:cust_id))
          @loan_acct_gen_info = LoanAcctGenInfo.new(options.delete(:loan_acct_gen_info))
          @amt_already_disb = AmtAlreadyDisb.new(options.delete(:amt_already_disb))
          @amt_avail_for_disb = AmtAvailForDisb.new(options.delete(:amt_avail_for_disb))
          @disb_amt = DisbAmt.new(options.delete(:disb_amt))
          @src_dealer_code = SrcDealerCode.new(options.delete(:src_dealer_code))
          @disb_dealer_code = DisbDealerCode.new(options.delete(:disb_dealer_code))
          @loan_gen_details = LoanGenDetails.new(options.delete(:loan_gen_details))
          @ach_details = ACHDetails.new(options.delete(:ach_details))

          multi_src_instruction_recs = options.delete(:multi_src_instruction_rec)
          rel_party_recs = options.delete(:rel_party_rec)

          if multi_src_instruction_recs and multi_src_instruction_recs.is_a?(Array)
            @multi_src_instruction_recs = multi_src_instruction_recs { |mul| MultiSrcInstructionRec.new(mul) }
          end

          if rel_party_recs and rel_party_recs.is_a?(Array)
            @rel_party_recs = rel_party_recs { |rel| RelPartyRec.new(rel) }
          end

          options.each do |key, value|
          send(:"#{key}=", value) if respond_to?(:"#{key}=")
        end
      end
    end
  end
end
