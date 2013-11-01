require 'finacle_api/common/serializable_object'

module FinacleApi
  module BalInq
    module ResponseEntity
      # <PostAddr>
      #   <Addr1/>
      #   <Addr2/>
      #   <Addr3/>
      #   <City/>
      #   <StateProv/>
      #   <PostalCode/>
      #   <Country/>
      #   <AddrType/>
      # </PostAddr>
      class PostAddr < SerializableObject
        attr_accessor :addr1, :addr2, :addr3, :city, :state_prov, :postal_code, :country, :addr_type
      end
    end
  end
end