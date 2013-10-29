require 'active_model'
require 'finacle_api/bal_inq/entities/bal_inq_rq'

module FinacleApi
  module BalInq
    class BalInqRequest
      include ActiveModel::Serializers::Xml

      def initialize(account_id, opts={})
        @bal_inq_rq = BalInqRq.new(account_id, opts={})
      end

      def bal_inq_rq
        @bal_inq_rq
      end

      def attributes
        {:bal_inq_rq => nil}
      end
    end
  end
end