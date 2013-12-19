require 'finacle_api/common/serializable_object' 
require 'finacle_api/loan_acct_inq/response/recovery_acct_id' 
require 'finacle_api/loan_acct_inq/response/value_in_amt' 
require 'finacle_api/loan_acct_inq/response/value_in_percent' 
require 'finacle_api/loan_acct_inq/response/acct_id' 
module FinacleApi
  module LoanAcctInq
    module ResponseEntity
      class MultiSrcInstructionRec < SerializableObject
        attr_accessor :recovery_acct_id, :install_type, :re_pmt_method, :amt_percent_ind, :value_in_amt, :value_in_percent, :acct_id

        def initialize(options={})
          options ||= {}
          @recovery_acct_id = RecoveryAcctId.new(options.delete(:recovery_acct_id))
          @value_in_amt = ValueInAmt.new(options.delete(:value_in_amt))
          @value_in_percent = ValueInPercent.new(options.delete(:value_in_percent))
          @acct_id = AcctId.new(options.delete(:acct_id))

          options.each do |key, value|
          send(:"#{key}=", value) if respond_to?(:"#{key}=")
        end
      end
    end
  end
end
