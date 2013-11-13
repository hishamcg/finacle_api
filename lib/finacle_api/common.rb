require "finacle_api/common/fixml"
require "finacle_api/common/request_header"
require "finacle_api/common/message_key"
require "finacle_api/common/request_message_info"
require "finacle_api/common/security"
require "finacle_api/common/token"
require "finacle_api/common/password_token"
require "finacle_api/common/fi_business_exception"
require "finacle_api/common/fi_system_exception"
require "finacle_api/common/error_detail"

module FinacleApi
  module Common
    def error_object(hash)
      error_hash = hash.delete(:error)
      error_hash ||= {}
      business_exp_hash = error_hash.delete(:fi_business_exception)
      system_exp_hash = error_hash.delete(:fi_system_exception)
      if system_exp_hash
        FinacleApi::Common::FISystemException.new(system_exp_hash)
      elsif business_exp_hash
        FinacleApi::Common::FIBusinessException.new(business_exp_hash)
      else
        FinacleApi::Common::FIBusinessException.new
      end
    end
  end
end