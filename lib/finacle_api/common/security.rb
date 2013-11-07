require 'finacle_api/common/serializable_object'
require 'finacle_api/common/token'

module FinacleApi
  module Common
    # <Security>
    #   <Token>
    #     <PasswordToken>
    #       <UserId></UserId>
    #       <Password></Password>
    #     </PasswordToken>
    #   </Token>
    #   <FICertToken></FICertToken>
    #   <RealUserLoginSessionId></RealUserLoginSessionId>
    #   <RealUser></RealUser>
    #   <RealUserPwd></RealUserPwd>
    #   <SSOTransferToken></SSOTransferToken>
    # </Security>
    class Security < SerializableObject
      attr_accessor :token, :FI_cert_token, :real_user_login_session_id, 
                    :real_user, :real_user_pwd, :SSO_transfer_token

      def initialize(options={})
        @token = FinacleApi::Common::Token.new(options.delete(:token))
        super(options)
      end

    end
  end
end