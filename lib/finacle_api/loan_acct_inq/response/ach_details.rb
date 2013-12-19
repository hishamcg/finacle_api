require 'finacle_api/common/serializable_object' 
require 'finacle_api/loan_acct_inq/response/resp_acct_id' 
module FinacleApi
  module LoanAcctInq
    module ResponseEntity
      class ACHDetails < SerializableObject
        attr_accessor :pay_sys_id, :resp_acct_id

        def initialize(options={})
          options ||= {}
          @resp_acct_id = RespAcctId.new(options.delete(:resp_acct_id))

          options.each do |key, value|
          send(:"#{key}=", value) if respond_to?(:"#{key}=")
        end
      end
    end
  end
end
