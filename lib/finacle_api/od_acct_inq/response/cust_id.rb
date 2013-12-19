require 'finacle_api/common/serializable_object' 
require 'finacle_api/od_acct_inq/response/person_name' 
module FinacleApi
  module ODAcctInq
    module ResponseEntity
      class CustId < SerializableObject
        attr_accessor :cust_id, :person_name

        def initialize(options={})
          options ||= {}
          @person_name = PersonName.new(options.delete(:person_name))

          options.each do |key, value|
          send(:"#{key}=", value) if respond_to?(:"#{key}=")
        end
      end
    end
  end
end
