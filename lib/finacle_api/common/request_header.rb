require 'finacle_api/common/serializable_object'

module FinacleApi
  module Common
    class RequestHeader < SerializableObject
      attr_accessor :message_key, :request_message_info, :security

      def initialize(opts={})
        super
      end

      def attributes
        {:message_key => nil, :request_message_info => nil, :security => nil}
      end
    end
  end
end