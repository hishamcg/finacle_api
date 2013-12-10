require 'erb'
require 'finacle_api/common'
require 'finacle_api/stop_chk_add_request'

module FinacleApi
  module StopChkAdd
    class Request

      API_PATH = '/FISERVLET/fihttp'
      attr_accessor :fixml

      def initialize(options={})

        security_hash = options.delete(:security_hash)
        @acct_id = options.delete(:acct_id)
        stop_chk_info = options.delete(:stop_chk_info)

        @request_message_info = FinacleApi::Common::RequestMessageInfo.new(
          :bank_id => "",
          :time_zone => "",
          :entity_id => "",
          :entity_type => "",
          :arm_correlation_id => "",
          :message_date_time => "#{Time.now.strftime('%Y-%m-%dT%H:%M:%S.%L')}"
        )

        @message_key = FinacleApi::Common::MessageKey.new(
          :request_uuid => "SR_#{rand(100000000000)}",
          :service_request_id => "StopChkAdd",
          :service_request_version => "10.2",
          :channel_id => "COR",
          :language_id => ""
        )

        @security_header = FinacleApi::Common::Security.new(
          security_hash.merge(
            :FI_cert_token => "",
            :real_user_login_session_id => "",
            :real_user => "",
            :real_user_pwd => "",
            :SSO_transfer_token => ""
          )
        )

        request_header = FinacleApi::Common::RequestHeader.new(
          :security => @security_header,
          :message_key => @message_key,
          :request_message_info => @request_message_info
        )

        stop_chk_add_request = FinacleApi::BalInq::RequestEntity::StopChkAddRq.new(@acct_id,stop_chk_info)

        @fixml = FinacleApi::Common::FIXML.new(
          :header => {:request_header => request_header},
          :body => {:stop_chk_Add_request => stop_chk_add_request}
        )
      end

      def xml_payload
        render
      end

      private

      def template
        File.read("#{File.dirname(__FILE__)}/templates/request.erb")
      end

      def render()
        ERB.new(template).result(binding)
      end
  end
end
