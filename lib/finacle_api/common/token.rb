require 'finacle_api/common/serializable_object'
require 'finacle_api/common/password_token'

module FinacleApi
  module Common
    # <Token>
    #   <PasswordToken>
    #     <UserId></UserId>
    #     <Password></Password>
    #   </PasswordToken>
    # </Token>
    class Token < SerializableObject
      attr_accessor :password_token

      def initialize(options={})
        @password_token = FinacleApi::Common::PasswordToken.new(options.delete(:password_token))
      end

      def attributes
        {:password_token => nil}
      end
    end
  end
end