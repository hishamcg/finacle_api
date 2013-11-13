require 'finacle_api/utils'
require 'finacle_api/common'
require 'finacle_api/block_modify/request'
require 'finacle_api/block_modify/response/block_modify_response'

module FinacleApi
  module BlockModify
    module API
      include FinacleApi::Utils
      include FinacleApi::Common
      def mark_lien(acid, amount, branch_id, options={})
        req = FinacleApi::BlockModify::Request.new(
          :security_hash => send(:security_hash), 
          :block_modify_request => {
            :block_modify_input_vo => {
              :acid => acid,
              :block_amount => {
                :amount_value => amount,
                :currency_code => options.delete(:currency_code) || 'INR'
              },
              :block_id => options.delete(:block_id) || "",
              :branch_id => branch_id,
              :modify_indicator => 'P',
              :reason_code => options.delete(:reason_code) || "",
              :value_date => options.delete(:value_date) || "#{Time.now.strftime('%Y-%m-%dT%H:%M:%S.%L')}"
            }
          }
        )
        response_body = response_from(:post, FinacleApi::BlockModify::Request::API_PATH, req.xml_payload)["FIXML"]["Body"]
        body_hash = convert_hash_keys(response_body)
        block_modify_response_object(body_hash)
      end

      def block_modify_response_object(hash)
        p "response body hash ~> [#{hash.inspect}]"
        if hash.has_key?(:error)
          error_object(hash)
        else
          FinacleApi::BlockModify::ResponseEntity::BlockModifyResponse.new(hash.delete(:block_modify_response))
        end
      end
    end
  end
end