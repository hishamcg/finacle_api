require 'finacle_api/common/serializable_object'

module FinacleApi
  module CustomerDetails
    module ResponseEntity
      class DemographicDtls < SerializableObject
        attr_accessor :donot_call_flag, :donot_mail_flag, :donot_send_e_mail_flag, :name_of_employer, :employment_status, 
          :marital_status, :nationality, :marital_status_code, :nationality_code, :pref_contact_time, 
          :pref_day_time_contact_num, :pref_day_time_contact_num_area, :pref_day_time_contact_num_country, 
          :pref_day_time_contact_num_local, :residence_country, :residence_country_code

      end
    end
  end
end