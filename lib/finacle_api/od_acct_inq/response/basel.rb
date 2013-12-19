require 'finacle_api/common/serializable_object' 
require 'finacle_api/od_acct_inq/response/security_indicator' 
require 'finacle_api/od_acct_inq/response/security_code' 
module FinacleApi
  module ODAcctInq
    module ResponseEntity
      class basel < SerializableObject
        attr_accessor :security_indicator, :debt_seniority, :security_code

        def initialize(options={})
          options ||= {}
          @security_indicator = security_indicator.new(options.delete(:security_indicator))
          @security_code = security_code.new(options.delete(:security_code))

          options.each do |key, value|
          send(:"#{key}=", value) if respond_to?(:"#{key}=")
        end
      end
    end
  end
end
