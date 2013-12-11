require 'finacle_api/utils'
require 'finacle_api/common'
require "finacle_api/exception"
require 'finacle_api/de_duplication_inq/request'
require 'finacle_api/de_duplication_inq/response/de_duplication_inq_response'

module FinacleApi
  module DeDuplicationInq
    module API
      include FinacleApi::Utils
      include FinacleApi::Common

      def customer_search(options={})
        first_name = options.delete(:first_name)
        last_name = options.delete(:last_name)
        middle_name = options.delete(:middle_name)
        birth_dt = options.delete(:birth_dt)
        is_across_entity = options.delete(:is_across_entity)
        per_page = options.delete(:per_page)
        page_num = options.delete(:page_num)

        rec_ctrl_in = {
          :max_rec => per_page || 10,
          :set_num => page_num || 1
        }
        de_duplication_inq_rq = {
          :first_name => "#{first_name}".upcase,
          :last_name => "#{last_name}".upcase,
          :middle_name => "#{middle_name}".upcase,
          :is_across_entity => is_across_entity || 'N',
          :birth_dt => "#{birth_dt}"
        }
        req = FinacleApi::DeDuplicationInq::Request.new(
          :security_hash => send(:security_hash), 
          :rec_ctrl_in => rec_ctrl_in,
          :de_duplication_inq_rq => de_duplication_inq_rq
        )

        p "XML PAYLOAD ~ [#{req.xml_payload}]"
        begin
          response_body = response_from(:post, FinacleApi::DeDuplicationInq::Request::API_PATH, req.xml_payload)["FIXML"]["Body"]
        rescue FinacleApi::Exception::ClientException => ce
          response_body = {
            :error => {
              :fi_system_exception => {
                :error_detail => {
                  :error_code => ce.class,
                  :error_desc => ce.message,
                  :error_type => 'FinacleApiRubyClient'
                }
              }
            }
          }
        end
        body_hash = convert_hash_keys(response_body)
        p "body hash #{body_hash}"
        de_duplication_inq_response_object(body_hash)
      end


      def de_duplication_inq_response_object(hash)
        # p "response body hash ~> [#{hash.inspect}]"
        if hash.has_key?(:error)
          error_object(hash)
        else
          FinacleApi::DeDuplicationInq::ResponseEntity::DeDuplicationInqResponse.new(hash.delete(:de_duplication_inq_response))
        end
      end


    end
  end
end