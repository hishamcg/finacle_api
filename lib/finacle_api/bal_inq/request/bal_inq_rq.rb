require 'finacle_api/common/serializable_object'
require 'finacle_api/bal_inq/request/acct_id'

module FinacleApi
  module BalInq
    class BalInqRq < SerializableObject
      attr_accessor :acct_id

      def initialize(account_id)
        @acct_id = AcctId.new(account_id)
      end

      def attributes
        {:acct_id => nil}
      end
    end
  end
end