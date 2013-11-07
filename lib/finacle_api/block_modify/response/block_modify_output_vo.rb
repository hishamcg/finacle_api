require 'finacle_api/common/serializable_object'
require 'finacle_api/block_modify/response/account_balance'

module FinacleApi
  module BlockModify
    module ResponseEntity
      class BlockModifyOutputVO < SerializableObject
        attr_accessor :account_balances, :account_status, :stan, :value_date
        def initialize(options={})
          options ||= {}
          @account_balances = AccountBalance.new(options.delete(:account_balances))
          options.each do |key, value|
            send(:"#{key}=", value) if respond_to?(:"#{key}=")
          end
        end
      end
    end
  end
end