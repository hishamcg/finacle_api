require 'finacle_api/common/serializable_object' 
require 'finacle_api/od_acct_inq/response/floor_limit_amt' 
require 'finacle_api/od_acct_inq/response/with_holding_percent' 
module FinacleApi
  module ODAcctInq
    module ResponseEntity
      class WithHoldingTaxDtls < SerializableObject
        attr_accessor :tax_category, :floor_limit_amt, :with_holding_percent

        def initialize(options={})
          options ||= {}
          @floor_limit_amt = FloorLimitAmt.new(options.delete(:floor_limit_amt))
          @with_holding_percent = WithHoldingPercent.new(options.delete(:with_holding_percent))

          options.each do |key, value|
          send(:"#{key}=", value) if respond_to?(:"#{key}=")
        end
      end
    end
  end
end
