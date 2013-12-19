require 'finacle_api/common/serializable_object' 
require 'finacle_api/loan_acct_inq/response/holiday_period_details' 
require 'finacle_api/loan_acct_inq/response/eq_install_details' 
require 'finacle_api/loan_acct_inq/response/repmt_rec' 
module FinacleApi
  module LoanAcctInq
    module ResponseEntity
      class PmtPlan < SerializableObject
        attr_accessor :holiday_period_details, :int_rest_basis, :int_rest_freq, :eq_install_details, :repmt_recs

        def initialize(options={})
          options ||= {}
          @holiday_period_details = HolidayPeriodDetails.new(options.delete(:holiday_period_details))
          @eq_install_details = EqInstallDetails.new(options.delete(:eq_install_details))
          repmt_recs = options.delete(:repmt_rec)

          if repmt_recs and repmt_recs.is_a?(Array)
            @repmt_recs = repmt_recs.map { |rec| RepmtRec.new(rec) }
          end

          options.each do |key, value|
          send(:"#{key}=", value) if respond_to?(:"#{key}=")
        end
      end
    end
  end
end
