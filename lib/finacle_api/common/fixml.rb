require 'builder'
require 'active_model'
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


      def fixml(xsd_name='None')
        builder = ::Builder::XmlMarkup.new
        builder.instruct!

        builder.tag!("FIXML", {
            :"xsi:schemaLocation" => "http://www.finacle.com/fixml #{xsd_name}.xsd",
            :xmlns => "http://www.finacle.com/fixml",
            :"xmlns:xsi" => "http://www.w3.org/2001/XMLSchema-instance"
        }) do 

          @header.to_xml(:builder => builder, :camelize => true, :root => 'header', :skip_instruct => true)
          @body.to_xml(:builder => builder, :root => 'body', :camelize => true, :skip_instruct => true)

        end
      end


    end
  end
end