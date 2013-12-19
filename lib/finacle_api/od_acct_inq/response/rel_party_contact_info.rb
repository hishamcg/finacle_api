require 'finacle_api/common/serializable_object' 
require 'finacle_api/od_acct_inq/response/phone_num' 
require 'finacle_api/od_acct_inq/response/post_addr' 
module FinacleApi
  module ODAcctInq
    module ResponseEntity
      class RelPartyContactInfo < SerializableObject
        attr_accessor :phone_num, :email_addr, :post_addr

        def initialize(options={})
          options ||= {}
          @phone_num = PhoneNum.new(options.delete(:phone_num))
          @post_addr = PostAddr.new(options.delete(:post_addr))

          options.each do |key, value|
          send(:"#{key}=", value) if respond_to?(:"#{key}=")
        end
      end
    end
  end
end
