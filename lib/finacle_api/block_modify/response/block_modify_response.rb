require 'finacle_api/common/serializable_object'
require 'finacle_api/block_modify/response/block_modify_output_vo'
require 'finacle_api/block_modify/response/block_modify_custom_data'

module FinacleApi
  module BlockModify
    module ResponseEntity
      class BlockModifyResponse < SerializableObject
        attr_accessor :block_modify_output_vo, :block_modify_custom_data
        def initialize(options={})
          options ||= {}
          @block_modify_output_vo = BlockModifyOutputVO.new(options.delete(:block_modify_output_vo))
          @block_modify_custom_data = BlockModifyCustomData.new(options.delete(:block_modify_custom_data))
        end
      end
    end
  end
end