require 'finacle_api/common/serializable_object'

module FinacleApi
  module DeDuplicationInq
    module ResponseEntity
      class SearchDedupDtls < SerializableObject
        attr_accessor :search_dedup_data
        def initialize(options={})
          options ||= {}
          @search_dedup_data = SearchDedupData.new(options.delete(:search_dedup_data))
        end
      end
    end
  end
end