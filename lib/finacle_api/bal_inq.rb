require 'finacle_api/common'
require 'finacle_api/bal_inq/entities/bal_inq_request'
require 'finacle_api/bal_inq/entities/acct_id'
require 'finacle_api/bal_inq/entities/bal_inq_rq'

module FinacleApi
  module BalInq
    class Request

      def payload(options={})

        security_hash = options.delete(:security_hash)
        account_id = options.delete(:account_id)

        request_message_info = FinacleApi::Common::RequestMessageInfo.new(
          :bank_id => "",
          :time_zone => "",
          :entity_id => "",
          :entity_type => "", 
          :arm_correlation_id => "",
          :message_date_time => ""
        )

        message_key = FinacleApi::Common::MessageKey.new(
          :request_UUID => "", 
          :service_request_id => "", 
          :service_request_version => "", 
          :channel_id => "", 
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

        header = FinacleApi::Common::RequestHeader.new(
          :security => security_header, 
          :message_key => message_key, 
          :request_message_info => request_message_info
        )

        bal_inq_request = FinacleApi::BalInq::BalInqRequest.new(account_id)

        FinacleApi::Common::FIXML.new(
          :header => header, 
          :body => {:bal_inq_request => bal_inq_request}
        )
      end

    end

  end
end