require 'finacle_api/common/serializable_object'
require 'finacle_api/customer_details/response/ret_cust_dtls'
require 'finacle_api/customer_details/response/demographic_dtls'
require 'finacle_api/customer_details/response/entity_doc_dtls'
require 'finacle_api/customer_details/response/psychographic_dtls'
require 'finacle_api/customer_details/response/rel_bank_dtls'
require 'finacle_api/customer_details/response/trade_fin_dtls'
require 'finacle_api/customer_details/response/retail_basel_dtls'


module FinacleApi
  module CustomerDetails
    module ResponseEntity
      class CustomerDetailsAggregate < SerializableObject
        attr_accessor :ret_cust_dtls, :demographic_dtls, :entity_doc_dtls, :psychographic_dtls, :rel_bank_dtls, :trade_fin_dtls, :retail_basel_dtls
        def initialize(options={})
          options ||= {}
          @ret_cust_dtls = RetCustDtls.new(options.delete(:ret_cust_dtls))
          @demographic_dtls = DemographicDtls.new(options.delete(:demographic_dtls))
          @psychographic_dtls = PsychographicDtls.new(options.delete(:psychographic_dtls))
          @rel_bank_dtls = RelBankDtls.new(options.delete(:rel_bank_dtls))
          @trade_fin_dtls = TradeFinDtls.new(options.delete(:trade_fin_dtls))
          @retail_basel_dtls = RetailBaselDtls.new(options.delete(:retail_basel_dtls))

          if entity_doc_dtls 
            if entity_doc_dtls.is_a?(Array)
              @entity_doc_dtls = entity_doc_dtls.map { |result| EntityDocDtls.new(result) }
            else
              @entity_doc_dtls = [EntityDocDtls.new(entity_doc_dtls)]
            end
          end
        end
      end
    end
  end
end