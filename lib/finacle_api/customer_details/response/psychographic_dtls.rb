require 'finacle_api/common/serializable_object'

module FinacleApi
  module CustomerDetails
    module ResponseEntity
      class PsychographicDtls < SerializableObject
        attr_accessor :despatch_mode, :house_hold_num, :pref_addr_mode, :pref_rep, :pref_name, :risk_behaviour, 
          :segmentation_class, :stmt_freq, :stmt_type, :stmt_dt_week_day, :stmt_date_week_day, :stmt_week_of_month
      end
    end
  end
end