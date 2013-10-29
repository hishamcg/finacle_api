require 'finacle_api/common/serializable_object'

module FinacleApi
  module Common
    # <RequestMessageInfo>
    #   <BankId></BankId>
    #   <TimeZone></TimeZone>
    #   <EntityId></EntityId>
    #   <EntityType></EntityType>
    #   <ArmCorrelationId></ArmCorrelationId>
    #   <MessageDateTime>2013-07-16T10:44:41.191</MessageDateTime>
    # </RequestMessageInfo>
    class RequestMessageInfo < SerializableObject
      attr_accessor :bank_id, :time_zone, :entity_id, :entity_type, :arm_correlation_id, :message_date_time

      def attributes
        {:bank_id => nil, :time_zone => nil, :entity_id => nil, :entity_type => nil, 
          :arm_correlation_id => nil, :message_date_time => nil}
      end
    end
  end
end