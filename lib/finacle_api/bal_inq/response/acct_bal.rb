require 'finacle_api/common/serializable_object'
require 'finacle_api/bal_inq/response/bal_amt'

module FinacleApi
  module BalInq
    module ResponseEntity
      class AcctBal < SerializableObject
        attr_accessor :bal_type, :bal_amt
        def initialize(options={})
          options ||= {}
          @acct_type = BalAmt.new(options.delete(:bal_amt))
          options.each do |key, value|
            send(:"#{key}=", value) if respond_to?(:"#{key}=")
          end
        end
      end
    end
  end
end