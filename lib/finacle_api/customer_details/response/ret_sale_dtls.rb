require 'finacle_api/common/serializable_object'
require 'finacle_api/customer_details/response/sale_cust'
require 'finacle_api/customer_details/response/sale_channel_dtls'
require 'finacle_api/customer_details/response/product_dtls_info'

module FinacleApi
  module CustomerDetails
    module ResponseEntity
      class RetSaleDtls < SerializableObject
        attr_accessor :product_dtls_info, :sale_channel_dtls, :sale_cust, :prod_cat_id, :acct_branch_code, :acct_id, :channel_cust_id, :channel_name, 
            :is_master_acct, :is_multi_curr_acct, :product_category, :product_code, :is_revolving_od_acct, :top_up_flag
        def initialize(options={})
          options ||= {}
          @sale_cust = SaleCust.new(options.delete(:sale_cust))
          @sale_channel_dtls = SaleChannelDtls.new(options.delete(:sale_channel_dtls))
          @product_dtls_info = ProductDtlsInfo.new(options.delete(:product_dtls_info))
          options.each do |key, value|
            send(:"#{key}=", value) if respond_to?(:"#{key}=")
          end
        end
      end
    end
  end
end