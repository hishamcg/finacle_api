require 'finacle_api/common/serializable_object'
require 'finacle_api/bal_inq/response/bank_info'
require 'finacle_api/bal_inq/response/acct_type'

module FinacleApi
  module BalInq
    module ResponseEntity
      class AcctId < SerializableObject
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
end