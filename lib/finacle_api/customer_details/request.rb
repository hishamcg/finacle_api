require 'finacle_api/common'


module FinacleApi
  module CustomerDetails
    class Request

      API_PATH = '/FISERVLET/fihttp'
      DEFAULT_CUST_TYPE = 'Retail'
      attr_accessor :cust_id, :cust_type
      def initialize(options={})
        options ||= {}
        options.each do |key, value|
          send(:"#{key}=", value) if respond_to?(:"#{key}=")
        end
      end

      def params
        {:cust_type => cust_type||DEFAULT_CUST_TYPE, :cust_id => cust_id}
      end
    end #class end

  end
end