require 'finacle_api/common/serializable_object'
require 'finacle_api/customer_details/response/ret_cust_addr_info'
require 'finacle_api/customer_details/response/phone_email_info'

module FinacleApi
  module CustomerDetails
    module ResponseEntity
      class RetCustDtls < SerializableObject
        attr_accessor :phone_email_infos, :ret_cust_addr_info, :acct_name, :annual_revenue, :assistant, :available_cr_limit, :blacklist_notes, 
              :blacklist_reason, :is_blacklisted, :card_holder, :category, :charge_level_code, :cust_id, 
              :cin, :city, :combined_stmt_flag, :constitution_code, :constitution_ref_code, :corp_rep_count, 
              :country_of_birth, :created_from, :created_by_system_id, :curr_code, :current_cr_exposure, :community_code, 
              :community, :birth_dt, :first_name, :first_name_native, :first_name_native1, :health, :health_code, :language, 
              :last_name, :last_name_native, :last_name_native1, :middle_name, :middle_name_native, :middle_name_native1, 
              :is_staff, :swift_code, :cust_type, :cust_type_code, :cust_class, :is_minor, :is_nre, :cust_profitability, 
              :cust_rel_num, :cust_trade, :default_addr_type, :delinquency_flag, :deliquency_period, :designation, :is_doc_received, 
              :dual_first_name, :dual_last_name, :dual_middle_name, :education, :entity_creation_flag, :extn_num, :father_or_husband_name, 
              :fax, :fax_home, :gender, :group_id_code, :household_name, :incremental_dt, :internal_score, :salutation_code_of_introducer, 
              :status_of_introducer, :name_of_introducer, :salutation_of_introducer, :is_swift_code_of_bank, :is_corp_representative, 
              :is_dummy, :is_e_banking_enabled, :is_sms_banking_enabled, :is_wap_banking_enabled, :lead_source, :license_num, :maiden_name, 
              :maiden_name_of_mother, :manager, :manager_opinion, :guardian_code, :guardian_name, :modified_by_sys_id, :mother_name, :name, 
              :name_suffix, :national_id_card_num, :native_language, :native_language_code, :native_language_name, :native_language_title, 
              :native_language_title_code, :is_negated, :negation_notes, :negation_reason, :nick_name, :notes, :occupation, :occupation_code, 
              :offline_cum_dr_limit, :pan, :passport_num, :person_type, :phone, :place_of_birth, :potential_cr_line, :pref_code, :pref_code_ref_code, 
              :pref_name, :previous_name, :primary_service_centre, :primary_sol_id, :priority_code, :proof_of_age_doc, :proof_of_age_flag, 
              :passport_dtls, :rating, :rating_code, :region, :relationship_level, :relationship_type, :relationship_opening_dt, 
              :relationship_value, :revenue_units, :salutation, :salutation_code, :sector, :sector_code, :segmentation_class, :short_name, 
              :short_name_native, :short_name_native1, :sic_code, :sms_banking_mob_num, :ssn, :staff_flag, :status, :sub_sector, :sub_sector_code, 
              :sub_segment, :suspend_notes, :suspend_reason, :is_suspended, :tf_party_flag, :ticker_symbol, :total_cr_exposure
        def initialize(options={})
          options ||= {}
          @ret_cust_addr_info = RetCustAddrInfo.new(options.delete(:ret_cust_addr_info))
          phone_email_infos = options.delete(:phone_email_infos)
          if phone_email_infos 
            if phone_email_infos.is_a?(Array)
              @phone_email_infos = phone_email_infos.map { |result| PhoneEmailInfo.new(result) }
            else
              @phone_email_infos = [PhoneEmailInfo.new(phone_email_infos)]
            end
          end
          options.each do |key, value|
            send(:"#{key}=", value) if respond_to?(:"#{key}=")
          end
        end
      end
    end
  end
end