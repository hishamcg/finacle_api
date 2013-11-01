require 'finacle_api/common/serializable_object'

module FinacleApi
  module BalInq
    class BalInqResponse < SerializableObject

      def initialize(opts={})
      end

      def attributes
        {:bal_inq_rs => nil}
      end
    end
  end
end