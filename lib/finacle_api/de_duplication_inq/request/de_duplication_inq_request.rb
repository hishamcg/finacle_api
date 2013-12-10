require 'finacle_api/common/serializable_object'
require 'finacle_api/de_duplication_inq/request/de_duplication_inq_rq'

module FinacleApi
  module DeDuplicationInq
    module RequestEntity
      class DeDuplicationInqRequest < SerializableObject
        attr_accessor :de_duplication_inq_rq

        def initialize(options={})
          @de_duplication_inq_rq = DeDuplicationInqRq.new(options.delete(:de_duplication_inq_rq))
        end

      end
    end
  end
end