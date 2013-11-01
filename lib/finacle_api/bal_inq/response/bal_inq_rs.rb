require 'finacle_api/common/serializable_object'
require 'finacle_api/bal_inq/response/acct_id'
require 'finacle_api/bal_inq/response/acct_bal'

module FinacleApi
  module BalInq
    module ResponseEntity
      class BalInqRs < SerializableObject
        attr_accessor :acct_id, :acct_bals
        def initialize(options={})
          options ||= {}
          @acct_id = AcctId.new(options.delete(:acct_id))
          acct_bals = options.delete(:acct_bal)
          if acct_bals and acct_bals.is_a?(Array)
            @acct_bals = acct_bals.map { |bal| AcctBal.new(bal) }
          end
        end
      end
    end
  end
end