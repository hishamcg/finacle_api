require 'finacle_api/common/serializable_object'

module FinacleApi
  module CustomerDetails
    module ResponseEntity
      class RetCustDtlsInfo < SerializableObject
        attr_accessor :first_name, :last_name, :is_swift_code_of_bank, :household_flag, :household_name, 
          :group_id, :default_addr_type, :cust_type_code, :is_corp_representative, :cust_swift_code, 
          :native_language_code, :native_language, :occupation_code, :salutation_code, :sector, :sector_code, 
          :status_code, :sub_sector, :sub_sector_code, :sub_segment, :tds_cust_id, :tds_table

      end
    end
  end
end