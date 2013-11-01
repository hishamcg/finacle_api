require 'finacle_api/common/serializable_object'
require 'finacle_api/bal_inq/response/bal_inq_rs'

module FinacleApi
  module BalInq
    module ResponseEntity
      class BalInqResponse < SerializableObject
        attr_accessor :bal_inq_rs
        def initialize(options={})
          options ||= {}
          @bal_inq_rs = BalInqRs.new(options.delete(:bal_inq_rs))
        end
      end
    end
  end
end