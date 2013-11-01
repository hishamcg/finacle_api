require 'finacle_api/common/serializable_object'

module FinacleApi
  module BalInq
    class AcctId < SerializableObject
      attr_accessor :acct_id

      def initialize(account_id)
        @acct_id = account_id
      end

      def attributes
        {:acct_id => nil}
      end
    end
  end
end