require 'finacle_api/common/serializable_object'
require 'finacle_api/block_modify/request/block_amount'

module FinacleApi
  module BlockModify
    module RequestEntity
      class BlockModifyInputVO < SerializableObject
        attr_accessor :block_amount, :acid, :block_id, :branch_id, :modify_indicator, :reason_code, :value_date

        def initialize(options={})
          options ||= {}
          @block_amount = BlockAmount.new(options.delete(:block_amount))
          options.each do |key, value|
            send(:"#{key}=", value) if respond_to?(:"#{key}=")
          end
        end

      end
    end
  end
end