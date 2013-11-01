require 'finacle_api/common/serializable_object'
require 'finacle_api/bal_inq/request/bal_inq_rq'

module FinacleApi
  module BalInq
    module RequestEntity
      class BalInqRequest < SerializableObject
        attr_accessor :bal_inq_rq

        def initialize(account_id)
          @bal_inq_rq = BalInqRq.new(account_id)
        end

        def attributes
          {:bal_inq_rq => nil}
        end
      end
    end
  end
end