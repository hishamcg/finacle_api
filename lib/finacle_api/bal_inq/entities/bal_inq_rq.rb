require 'active_model'
require 'finacle_api/bal_inq/entities/acct_id'

module FinacleApi
  module BalInq
    class BalInqRq
      include ActiveModel::Serializers::Xml

      def initialize(account_id, opts={})
        @acct_id = AcctId.new(account_id)
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