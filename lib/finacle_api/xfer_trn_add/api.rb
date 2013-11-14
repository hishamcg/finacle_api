require 'finacle_api/utils'
require 'finacle_api/common'
require 'finacle_api/xfer_trn_add/request'
require 'finacle_api/xfer_trn_add/response/xfer_trn_add_response'

module FinacleApi
  module XferTrnAdd
    module API
      include FinacleApi::Utils
      include FinacleApi::Common

      def cash_drop(debit_account_id, credit_account_id, amount, options={})
        currency_code = options.delete(:currency_code) || 'INR'
        pmt_inst = options.delete(:pmt_inst)
        value_dt = options.delete(:value_dt)
        debit_txn = {
          :acct_id => {
            :acct_id => debit_account_id
          },
          :trn_amt => {
            :amount_value => amount,
            :currency_code => currency_code
          },
          :value_dt => value_dt || "#{Time.now.strftime('%Y-%m-%dT00:00:00.000')}",
          :trn_particulars => 'CASHDROP'
        }
        
        debit_txn.merge!(:pmt_inst => pmt_inst) if pmt_inst
        # else
        #   debit_txn.merge!(:pmt_inst => {
        #     :pmt_inst_dt => "#{Time.now.strftime('%Y-%m-%dT00:00:00.000')}", 
        #     :pmt_inst_alpha => "", 
        #     :pmt_inst_num => "0000", 
        #     :pmt_inst_type => "CHQ"
        #   })
        # end

        credit_txn = {
          :acct_id => {
            :acct_id => credit_account_id
          },
          :trn_amt => {
            :amount_value => amount,
            :currency_code => currency_code
          },
          :value_dt => value_dt || "#{Time.now.strftime('%Y-%m-%dT00:00:00.000')}",
          :trn_particulars => 'CASHDROP'
        }

        req = FinacleApi::XferTrnAdd::Request.new(
          :security_hash => send(:security_hash), 
          :credit_transaction => credit_txn,
          :debit_transaction => debit_txn
        )
        p "drop XML PAYLOAD ~ [#{req.xml_payload}]"
        response_body = response_from(:post, FinacleApi::XferTrnAdd::Request::API_PATH, req.xml_payload)["FIXML"]["Body"]
        body_hash = convert_hash_keys(response_body)
        xfer_trn_response_object(body_hash)
      end

      def cash_pickup(debit_account_id, credit_account_id, amount, options={})
        currency_code = options.delete(:currency_code) || 'INR'
        pmt_inst = options.delete(:pmt_inst)
        value_dt = options.delete(:value_dt)
        debit_txn = {
          :acct_id => {
            :acct_id => debit_account_id
          },
          :trn_amt => {
            :amount_value => amount,
            :currency_code => currency_code
          },
          :value_dt => value_dt || "#{Time.now.strftime('%Y-%m-%dT00:00:00.000')}",
          :trn_particulars => 'CASHPICKUP'
        }

        debit_txn.merge!(:pmt_inst => pmt_inst) if pmt_inst

        credit_txn = {
          :acct_id => {
            :acct_id => credit_account_id
          },
          :trn_amt => {
            :amount_value => amount,
            :currency_code => currency_code
          },
          :value_dt => value_dt || "#{Time.now.strftime('%Y-%m-%dT00:00:00.000')}",
          :trn_particulars => 'CASHPICKUP'
        }

        req = FinacleApi::XferTrnAdd::Request.new(
          :security_hash => send(:security_hash), 
          :credit_transaction => credit_txn,
          :debit_transaction => debit_txn
        )
        p "pickup XML PAYLOAD ~ [#{req.xml_payload}]"
        response_body = response_from(:post, FinacleApi::XferTrnAdd::Request::API_PATH, req.xml_payload)["FIXML"]["Body"]
        body_hash = convert_hash_keys(response_body)
        xfer_trn_response_object(body_hash)
      end

      def xfer_trn_response_object(hash)
        p "response body hash ~> [#{hash.inspect}]"
        if hash.has_key?(:error)
          error_object(hash)
        else
          FinacleApi::XferTrnAdd::ResponseEntity::XferTrnAddResponse.new(hash.delete(:xfer_trn_add_response))
        end
      end
    end
  end
end