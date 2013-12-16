require 'finacle_api/common/serializable_object'
require 'finacle_api/customer_details/response/ret_sale_dtls'

module FinacleApi
  module CustomerDetails
    module ResponseEntity
      class RetCustAcctInqRs < SerializableObject
        attr_accessor :service, :status, :ret_sale_dtls
        def initialize(options={})
          options ||= {}
          ret_sale_dtls = options.delete(:ret_sale_dtls)
          if ret_sale_dtls 
            if ret_sale_dtls.is_a?(Array)
              @ret_sale_dtls = ret_sale_dtls.map { |result| RetSaleDtls.new(result) }
            else
              @ret_sale_dtls = [RetSaleDtls.new(ret_sale_dtls)]
            end
          end
          options.each do |key, value|
            send(:"#{key}=", value) if respond_to?(:"#{key}=")
          end
        end
      end
    end
  end
end