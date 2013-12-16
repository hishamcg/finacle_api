require 'finacle_api/common/serializable_object'

module FinacleApi
  module CustomerDetails
    module ResponseEntity
      class PhoneEmailInfo < SerializableObject
        attr_accessor :phone_email_info, :email_palm, :phone_email_type, :phone_num, :phone_num_city_code, 
          :phone_num_country_code, :phone_num_local_code, :phone_or_email, :pref_flag, :work_extn_num
      end
    end
  end
end