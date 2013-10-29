require 'active_model'

module FinacleApi
  module BalInq
    class AcctId
      include ActiveModel::Serializers::Xml

      def initialize(account_id)
        @acct_id = account_id
      end

      def acct_id
        @acct_id
      end

      def attributes
        {:acct_id => nil}
      end
    end
  end
end