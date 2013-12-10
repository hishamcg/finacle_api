require 'erb'
require 'finacle_api/common'
require 'finacle_api/de_duplication_inq/request/rec_ctrl_in'
require 'finacle_api/de_duplication_inq/request/de_duplication_inq_rq'


module FinacleApi
  module DeDuplicationInq
    class Request

      API_PATH = '/FISERVLET/fihttp'
      attr_accessor :fixml

      def initialize(options={})
        options ||= {}
        security_hash = options.delete(:security_hash)

        @request_message_info = FinacleApi::Common::RequestMessageInfo.new(
          :bank_id => "",
          :time_zone => "",
          :entity_id => "",
          :entity_type => "",
          :arm_correlation_id => "",
          :message_date_time => "#{Time.now.strftime('%Y-%m-%dT%H:%M:%S.%L')}"
        )

        @message_key = FinacleApi::Common::MessageKey.new(
          :request_uuid => "Req_#{rand(100000000000)}", 
          :service_request_id => "DeDuplicationInq", 
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
        
        @rec_ctrl_in = FinacleApi::DeDuplicationInq::RequestEntity::RecCtrlIn.new(options.delete(:rec_ctrl_in))
        @de_duplication_inq_rq = FinacleApi::DeDuplicationInq::RequestEntity::DeDuplicationInqRq.new(options.delete(:de_duplication_inq_rq))

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

    end #class end

  end
end
