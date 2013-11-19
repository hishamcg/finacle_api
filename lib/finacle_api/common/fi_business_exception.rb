require 'finacle_api/core_ext/inflections'
require 'finacle_api/common/serializable_object'
require 'finacle_api/common/error_detail'

module FinacleApi
  module Common
    class FIBusinessException < SerializableObject
      attr_accessor :error_detail
      def initialize(options={})
        error_detail_hash = options.delete(:error_detail)
        if error_detail_hash.is_a?(Array)
          @error_detail = []
          error_detail_hash.each do |ed|
            @error_detail.push(ErrorDetail.new(ed))
          end
        else
          @error_detail = [ErrorDetail.new(error_detail_hash)]
        end
      end

      def is_error?
        true
      end
    end
  end
end