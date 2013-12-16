require 'finacle_api/utils'
require 'finacle_api/common'
require 'finacle_api/stop_chk_add/request'
require 'finacle_api/stop_chk_add/response/stop_chk_add_response'

module FinacleApi
  module StopChkAdd
    module API
      include FinacleApi::Utils
      include FinacleApi::Common

      def stop_payment(acct_id, chk_num, reason, no_of_leaves, advice_dt)
        req = FinacleApi::StopChkAdd::Request.new(
          :security_hash => send(:security_hash),
          :stop_chk_info => {
            :chk_num => chk_num,
            :reason => reason,
            :no_of_leaves => no_of_leaves,
            :advice_dt => advice_dt
          },
          :acct_id =>{
            :acct_id => acct_id
          }
        )
        response_body = response_from(:post, FinacleApi::StopChkAdd::Request::API_PATH, req.xml_payload)["FIXML"]["Body"]
        body_hash = convert_hash_keys(response_body)
        stop_chk_add_response_object(body_hash)
      end

      def stop_chk_add_response_object(hash)
        if hash.has_key?(:error)
          error_object(hash)
        else
          FinacleApi::StopChkAdd::ResponseEntity::StopChkAddResponse.new(hash.delete(:stop_chk_add_response))
        end
      end
    end
  end
end