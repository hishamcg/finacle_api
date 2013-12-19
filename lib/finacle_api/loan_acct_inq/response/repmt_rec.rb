require 'finacle_api/common/serializable_object' 
require 'finacle_api/loan_acct_inq/response/install_freq' 
require 'finacle_api/loan_acct_inq/response/int_freq' 
module FinacleApi
  module LoanAcctInq
    module ResponseEntity
      class RepmtRec < SerializableObject
        attr_accessor :installment_id, :install_start_dt, :install_freq, :int_freq, :no_of_install

        def initialize(options={})
          options ||= {}
          @install_freq = InstallFreq.new(options.delete(:install_freq))
          @int_freq = IntFreq.new(options.delete(:int_freq))

          options.each do |key, value|
          send(:"#{key}=", value) if respond_to?(:"#{key}=")
        end
      end
    end
  end
end
