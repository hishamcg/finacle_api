require 'finacle_api/common/serializable_object'
require 'finacle_api/block_modify/request/block_modify_input_vo'

module FinacleApi
  module BlockModify
    module RequestEntity
      class BlockModifyRequest < SerializableObject
        attr_accessor :block_modify_input_vo

        def initialize(options={})
          @block_modify_input_vo = BlockModifyInputVO.new(options.delete(:block_modify_input_vo))
        end

      end
    end
  end
end