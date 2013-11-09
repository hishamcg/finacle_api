require 'finacle_api/common/serializable_object'

module FinacleApi
  module XferTrnAdd
    module RequestEntity
      # <TrnAmt>
      #   <amountValue>10</amountValue>
      #   <currencyCode>INR</currencyCode>
      # </TrnAmt>
      class TrnAmt < SerializableObject
        attr_accessor :amount_value, :currency_code
      end
    end
  end
end