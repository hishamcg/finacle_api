require 'finacle_api/common/serializable_object'

module FinacleApi
  module CustomerDetails
    module ResponseEntity
      class RetCustAddrInfo < SerializableObject
        attr_accessor :addr_line1, :addr_line2, :addr_line3, :addr_start_dt, :addr_category, :building_level, :business_center, :cell_num, 
          :city, :city_code, :country, :country_code, :domicile, :email, :end_dt, :fax_num, :fax_num_city_code, :fax_num_country_code, 
          :fax_num_local_code, :hold_mail_flag, :hold_mail_initiated_by, :hold_mail_reason, :house_num, :locality_name, :mail_stop, :name, 
          :pager_num, :pager_num_city_code, :pager_num_ccountry_code, :pager_num_local_code, :phone_num1, :pref_addr, :pref_format, :premise_name, 
          :residential_status, :salutation_code, :state, :state_code, :street_name, :street_num, :suburb, :telex, :telex_city_code, :telex_country_code, 
          :telex_local_code, :town, :postal_code, :is_address_verified
      end
    end
  end
end