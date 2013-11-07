require 'finacle_api/core_ext/inflections'
require 'finacle_api/common/serializable_object'
require 'finacle_api/common/error_detail'

module FinacleApi
  module Common
    class FIBusinessException < SerializableObject
      attr_accessor :error_detail
      def initialize(options={})
        @error_detail = ErrorDetail.new(options.delete(:error_detail))
      end
    end
  end
end