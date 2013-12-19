require 'finacle_api/common/serializable_object' 
require 'finacle_api/od_acct_inq/response/od_acct_inq_rs' 
module FinacleApi
  module ODAcctInq
    module ResponseEntity
      class ODAcctInqResponse < SerializableObject
        attr_accessor :od_acct_inq_rs, :od_acct_inq_custom_data

        def initialize(options={})
          options ||= {}
          @od_acct_inq_rs = ODAcctInqRs.new(options.delete(:od_acct_inq_rs))

          options.each do |key, value|
          send(:"#{key}=", value) if respond_to?(:"#{key}=")
        end
      end
    end
  end
end
