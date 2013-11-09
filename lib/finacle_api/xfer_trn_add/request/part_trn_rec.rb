
require 'finacle_api/common/serializable_object'
require 'finacle_api/xfer_trn_add/request/acct_id'
require 'finacle_api/xfer_trn_add/request/pmt_inst'
require 'finacle_api/xfer_trn_add/request/trn_amt'

module FinacleApi
  module XferTrnAdd
    module RequestEntity
      # <PartTrnRec>
      #   <AcctId>
      #     <AcctId>TFSB02</AcctId>
      #   </AcctId>
      #   <PmtInst>
      #     <PmtInstDt>2014-02-14T00:00:00.000</PmtInstDt>
      #     <PmtInstAlpha>!</PmtInstAlpha>
      #     <PmtInstNum>8</PmtInstNum>
      #     <PmtInstType>CHQ</PmtInstType>
      #   </PmtInst>
      #   <CreditDebitFlg>D</CreditDebitFlg>
      #   <TrnAmt>
      #     <amountValue>10</amountValue>
      #     <currencyCode>INR</currencyCode>
      #   </TrnAmt>
      #   <TrnParticulars>CASHDROP</TrnParticulars>
      #   <ValueDt>2014-02-14T00:00:00.000</ValueDt>
      # </PartTrnRec>
      class PartTrnRec < SerializableObject
        attr_accessor :acct_id, :pmt_inst, :credit_debit_flg, :trn_amt, :trn_particulars, :value_dt

        def initialize(options={})
          options ||= {}
          @acct_id = AcctId.new(options.delete(:acct_id))
          @pmt_inst = PmtInst.new(options.delete(:pmt_inst))
          @trn_amt = TrnAmt.new(options.delete(:trn_amt))
          options.each do |key, value|
            send(:"#{key}=", value) if respond_to?(:"#{key}=")
          end
        end

      end
    end
  end
end
