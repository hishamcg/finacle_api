require 'finacle_api/common/serializable_object' 
require 'finacle_api/loan_acct_inq/response/gen_ledger_sub_head' 
require 'finacle_api/loan_acct_inq/response/acct_stmt_freq' 
module FinacleApi
  module LoanAcctInq
    module ResponseEntity
      class LoanAcctGenInfo < SerializableObject
        attr_accessor :gen_ledger_sub_head, :acct_name, :acct_short_name, :acct_stmt_mode, :acct_stmt_freq, :despatch_mode

        def initialize(options={})
          options ||= {}
          @gen_ledger_sub_head = GenLedgerSubHead.new(options.delete(:gen_ledger_sub_head))
          @acct_stmt_freq = AcctStmtFreq.new(options.delete(:acct_stmt_freq))

          options.each do |key, value|
          send(:"#{key}=", value) if respond_to?(:"#{key}=")
        end
      end
    end
  end
end
