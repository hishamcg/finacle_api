require 'finacle_api/common/serializable_object' 
require 'finacle_api/loan_acct_inq/response/oper_acct_id' 
require 'finacle_api/loan_acct_inq/response/resched_params' 
require 'finacle_api/loan_acct_inq/response/pmt_plan' 
require 'finacle_api/loan_acct_inq/response/loan_amt' 
module FinacleApi
  module LoanAcctInq
    module ResponseEntity
      class LoanGenDetails < SerializableObject
        attr_accessor :loan_period_days, :loan_period_months, :re_pmt_method, :oper_acct_id, :resched_params, :pmt_plan, :loan_amt

        def initialize(options={})
          options ||= {}
          @oper_acct_id = OperAcctId.new(options.delete(:oper_acct_id))
          @resched_params = ReschedParams.new(options.delete(:resched_params))
          @pmt_plan = PmtPlan.new(options.delete(:pmt_plan))
          @loan_amt = LoanAmt.new(options.delete(:loan_amt))

          options.each do |key, value|
          send(:"#{key}=", value) if respond_to?(:"#{key}=")
        end
      end
    end
  end
end
