require 'finacle_api/common/serializable_object'

module FinacleApi
  module Common
    class RequestHeader < SerializableObject
      attr_accessor :message_key, :request_message_info, :security
    end
  end
end