require "finacle_api/common/fixml"
require "finacle_api/common/request_header"
require "finacle_api/common/message_key"
require "finacle_api/common/request_message_info"
require "finacle_api/common/security"
require "finacle_api/common/token"
require "finacle_api/common/password_token"
require "finacle_api/common/fi_business_exception"
require "finacle_api/common/error_detail"

module FinacleApi
  module Common
    def error_object(error_hash)
      exception_hash = error_hash[:fi_business_exception]
      FinacleApi::Common::FIBusinessException.new(exception_hash)
    end
  end
end