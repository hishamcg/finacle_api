require 'finacle_api/common/serializable_object' 
require 'finacle_api/td_acct_inq/response/acct_type' 
require 'finacle_api/td_acct_inq/response/bank_info' 
module FinacleApi
  module TDAcctInq
    module ResponseEntity
      class SrcAcctId < SerializableObject
        attr_accessor :acct_id, :acct_type, :acct_curr, :bank_info

        def initialize(options={})
          options ||= {}
          @acct_type = AcctType.new(options.delete(:acct_type))
          @bank_info = BankInfo.new(options.delete(:bank_info))

          options.each do |key, value|
          send(:"#{key}=", value) if respond_to?(:"#{key}=")
        end
      end
    end
  end
end
