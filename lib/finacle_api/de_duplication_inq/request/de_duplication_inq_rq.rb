require 'finacle_api/common/serializable_object'
require 'finacle_api/de_duplication_inq/request/rec_ctrl_in'

module FinacleApi
  module DeDuplicationInq
    module RequestEntity
      class DeDuplicationInqRq < SerializableObject
        attr_accessor :rec_ctrl_in, :first_name, :last_name, :middle_name, :is_across_entity, :birth_dt

        def initialize(options={})
          @rec_ctrl_in = RecCtrlIn.new(options.delete(:rec_ctrl_in))
          options.each do |key, value|
            send(:"#{key}=", value) if respond_to?(:"#{key}=")
          end
        end

      end
    end
  end
end