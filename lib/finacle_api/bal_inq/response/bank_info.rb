require 'finacle_api/common/serializable_object'
require 'finacle_api/bal_inq/response/post_addr'

module FinacleApi
  module BalInq
    module ResponseEntity
      # <BankInfo>
      #   <BankId/>
      #   <Name/>
      #   <BranchId/>
      #   <BranchName/>
      #   <PostAddr>
      #     <Addr1/>
      #     <Addr2/>
      #     <Addr3/>
      #     <City/>
      #     <StateProv/>
      #     <PostalCode/>
      #     <Country/>
      #     <AddrType/>
      #   </PostAddr>
      # </BankInfo>
      class BankInfo < SerializableObject
        attr_accessor :bank_id, :name, :branch_id, :branch_name, :post_addr
        def initialize(options={})
          options ||= {}
          @post_addr = PostAddr.new(options.delete(:post_addr))
          options.each do |key, value|
            send(:"#{key}=", value) if respond_to?(:"#{key}=")
          end
        end
      end
    end
  end
end