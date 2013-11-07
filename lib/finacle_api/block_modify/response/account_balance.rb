require 'finacle_api/common/serializable_object'
require 'finacle_api/block_modify/response/available_balance'
require 'finacle_api/block_modify/response/ffd_balance'
require 'finacle_api/block_modify/response/floating_balance'
require 'finacle_api/block_modify/response/ledger_balance'
require 'finacle_api/block_modify/response/user_defined_balance'

module FinacleApi
  module BlockModify
    module ResponseEntity
      class AccountBalance < SerializableObject
        attr_accessor :available_balance, :f_fd_balance, :floating_balance, :ledger_balance, :user_defined_balance, :branch_id, :currency_code, :acid
        def initialize(options={})
          options ||= {}
          @available_balance = AvailableBalance.new(options.delete(:available_balance))
          @f_fd_balance = FFDBalance.new(options.delete(:f_fd_balance))
          @floating_balance = FloatingBalance.new(options.delete(:floating_balance))
          @ledger_balance = LedgerBalance.new(options.delete(:ledger_balance))
          @user_defined_balance = UserDefinedBalance.new(options.delete(:user_defined_balance))
          options.each do |key, value|
            send(:"#{key}=", value) if respond_to?(:"#{key}=")
          end
        end
      end
    end
  end
end