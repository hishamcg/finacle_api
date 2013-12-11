require 'finacle_api/common/serializable_object'
require 'finacle_api/de_duplication_inq/response/rec_ctrl_out'
require 'finacle_api/de_duplication_inq/response/search_dedup_dtls'
require 'finacle_api/de_duplication_inq/response/search_dedup_data'

module FinacleApi
  module DeDuplicationInq
    module ResponseEntity
      class DeDuplicationInqRs < SerializableObject
        attr_accessor :rec_ctrl_out, :search_dedup_dtls, :service, :status
        def initialize(options={})
          options ||= {}
          @rec_ctrl_out = RecCtrlOut.new(options.delete(:rec_ctrl_out))
          search_dedup_dtls = options.delete(:search_dedup_dtls)
          if search_dedup_dtls 
            if search_dedup_dtls.is_a?(Array)
              @search_dedup_dtls = search_dedup_dtls.map { |result| SearchDedupDtls.new(result) }
            else
              @search_dedup_dtls = [SearchDedupDtls.new(search_dedup_dtls)]
            end
          end
          options.each do |key, value|
            send(:"#{key}=", value) if respond_to?(:"#{key}=")
          end
        end
      end
    end
  end
end