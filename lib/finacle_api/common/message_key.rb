require 'finacle_api/core_ext/inflections'
require 'finacle_api/common/serializable_object'

module FinacleApi
  module Common
    # <MessageKey>
    #   <RequestUUID>Req_1376630081191</RequestUUID>
    #   <ServiceRequestId>BalInq</ServiceRequestId>
    #   <ServiceRequestVersion>10.2</ServiceRequestVersion>
    #   <ChannelId>COR</ChannelId>
    #   <LanguageId></LanguageId>
    # </MessageKey>
    class MessageKey < SerializableObject
      attr_accessor :request_uuid, :service_request_id, :service_request_version, :channel_id, :language_id
    end
  end
end