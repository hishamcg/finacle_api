require 'finacle_api/common/serializable_object'

module FinacleApi
  module CustomerDetails
    module ResponseEntity
      class RetailBaselDtls < SerializableObject
        attr_accessor :debt_heloc, :curr_fico_score, :total_dsr, :business_total_score, :has_relationship, :combined_dsr, 
          :business_dsr, :cash_asset_ratio, :debt_worth_ratio, :interest_tax_ratio, :general_quick_ratio, :scored_sic_code, 
          :owner_years, :net_worth, :dda_bal, :combined_debt_ratio, :proposed_leverage, :glbl_cash_coverage, :current_ratio, 
          :liquidity_ratio, :min_tangible_worth, :fico_score, :fin_inq_cnt, :fin_trade_cnt, :inquiry_cnt, :minor_derogatory_cnt, 
          :major_derogatory_cnt, :never_past_due_cnt, :open_trade_cnt, :highest_credit_lmt, :trade_cnt_thirty, :trade_cnt_sixty, 
          :trade_cnt_ninety, :revolve_debt_prcnt, :satisfactory_cnt, :inst_loan_bal, :inst_loan_cnt, :mortgage_bal, :mortgage_trade_cnt, 
          :other_trade_bal, :other_trade_cnt, :revolve_bal, :revolve_trade_lmt, :revolve_trade_cnt, :cc_limit, :is_worst, :expense_income_ratio, 
          :sgmnt_pool_id, :pool_pd, :pool_lgd, :pool_ead, :pd, :lgd, :ead, :model_name, :model_version, :model_result, :is_failed

      end
    end
  end
end