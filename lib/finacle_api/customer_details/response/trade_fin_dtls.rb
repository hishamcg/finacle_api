require 'finacle_api/common/serializable_object'


module FinacleApi
  module CustomerDetails
    module ResponseEntity
      class TradeFinDtls < SerializableObject
        attr_accessor :caution_stat, :central_bank_id, :city, :contract_limit, :country_desc, :corp_key, 
          :corp_name, :created_from, :curr_desc, :cust_flag, :cust_native, :dc_mmargin_percentage, :dc_next_num_code, 
          :dc_next_num_code_r_code, :dc_sanction_ing_auth, :is_deleted, :entity_creation_flag, :entity_type, 
          :exp_imp_ind, :fax_num, :fc_sanction_ing_auth, :hundred_percent_flag, :individual_corp_flag, 
          :inland_trade_allowed, :leasing_liabilities, :name, :org_key, :party_const, :party_type, :phone, 
          :phone_city_code, :phone_country_code, :phone_local_code, :production_cycle, :rmks, :special_cust_flag, 
          :ssi_flag, :state_desc, :telex, :trade_authority_code, :postal_code

      end
    end
  end
end