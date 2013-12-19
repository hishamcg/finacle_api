require 'finacle_api/common/serializable_object' 
require 'finacle_api/loan_acct_inq/response/int_freq' 
module FinacleApi
  module LoanAcctInq
    module ResponseEntity
      class HolidayPeriodDetails < SerializableObject
        attr_accessor :holiday_period, :auto_resched_post_holiday_period, :int_during_holiday_period, :int_freq

        def initialize(options={})
          options ||= {}
          @int_freq = IntFreq.new(options.delete(:int_freq))

          options.each do |key, value|
          send(:"#{key}=", value) if respond_to?(:"#{key}=")
        end
      end
    end
  end
end
