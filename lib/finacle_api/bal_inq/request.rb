require 'finacle_api/common'
require 'finacle_api/bal_inq/request_entities'


module FinacleApi
  module BalInq
    class Request

      API_PATH = '/FISERVLET/fihttp'
      attr_accessor :fixml

      def initialize(options={})

        security_hash = options.delete(:security_hash)
        account_id = options.delete(:account_id)

        request_message_info = FinacleApi::Common::RequestMessageInfo.new(
          :bank_id => "",
          :time_zone => "",
          :entity_id => "",
          :entity_type => "",
          :arm_correlation_id => "",
          :message_date_time => "#{Time.now.strftime('%Y-%m-%dT%H:%M:%S.%L')}"
        )

        message_key = FinacleApi::Common::MessageKey.new(
          :request_uuid => "SR_#{rand(100000000000)}", 
          :service_request_id => "BalInq", 
          :service_request_version => "10.2", 
          :channel_id => "COR", 
          :language_id => ""
        )

        security_header = FinacleApi::Common::Security.new(
          security_hash.merge(
            :FI_cert_token => "",
            :real_user_login_session_id => "", 
            :real_user => "", 
            :real_user_pwd => "", 
            :SSO_transfer_token => ""
          )
        )

        request_header = FinacleApi::Common::RequestHeader.new(
          :security => security_header, 
          :message_key => message_key, 
          :request_message_info => request_message_info
        )

        bal_inq_request = FinacleApi::BalInq::RequestEntity::BalInqRequest.new(account_id)

        @fixml = FinacleApi::Common::FIXML.new(
          :header => {:request_header => request_header}, 
          :body => {:bal_inq_request => bal_inq_request}
        )

      end

      def payload
        @fixml.to_fixml('BalInq')
      end

      def to_response
      end

    end

  end
end