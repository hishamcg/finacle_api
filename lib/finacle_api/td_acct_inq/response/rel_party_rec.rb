require 'finacle_api/common/serializable_object' 
require 'finacle_api/td_acct_inq/response/cust_id' 
require 'finacle_api/td_acct_inq/response/rel_party_contact_info' 
module FinacleApi
  module TDAcctInq
    module ResponseEntity
      class RelPartyRec < SerializableObject
        attr_accessor :rel_party_type, :rel_party_type_desc, :rel_party_code, :rel_party_code_desc, :cust_id, :rel_party_contact_info, :rec_del_flg

        def initialize(options={})
          options ||= {}
          @cust_id = CustId.new(options.delete(:cust_id))
          @rel_party_contact_info = RelPartyContactInfo.new(options.delete(:rel_party_contact_info))

          options.each do |key, value|
          send(:"#{key}=", value) if respond_to?(:"#{key}=")
        end
      end
    end
  end
end
