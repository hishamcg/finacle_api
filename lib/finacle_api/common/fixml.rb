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
    class FIXML < SerializableObject
      attr_accessor :header, :body

      def initialize(options={})
        @header = options.delete(:header)
        @body = options.delete(:body)
      end

      def attributes
        {:header => nil, :body => nil}
      end

      def fixml
        to_xml(:root => "FIXML", :camelize => true)
      end
    end
  end
end