require 'finacle_api/core_ext/inflections'
require 'finacle_api/common/serializable_object'

module FinacleApi
  module Common
    class ErrorDetail < SerializableObject
      attr_accessor :error_code, :error_desc, :error_source, :error_type
    end
  end
end