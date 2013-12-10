require 'finacle_api/common/serializable_object'
require 'finacle_api/de_duplication_inq/response/de_duplication_inq_custom_data'
require 'finacle_api/de_duplication_inq/response/de_duplication_inq_rs'

module FinacleApi
  module DeDuplicationInq
    module ResponseEntity
      class DeDuplicationInqResponse < SerializableObject
        attr_accessor :de_duplication_inq_rs, :de_duplication_inq_custom_data
        def initialize(options={})
          options ||= {}
          @de_duplication_inq_rs = DeDuplicationInqRs.new(options.delete(:de_duplication_inq_rs))
          @de_duplication_inq_custom_data = DeDuplicationInqCustomData.new(options.delete(:de_duplication_inq_custom_data))
        end
      end
    end
  end
end