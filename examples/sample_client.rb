require 'finacle_api'

c = FinacleApi::Client.new(:user_id => '01212', :password => 'passpass', :endpoint => 'http://localhost:4567')

# r1 = c.balance_inquiry('1007710010000223')
# p "BalInq: RESPONSE OBJECT ~> [#{r1.inspect}]"
# p "BalInq: AddressLine1 is #{r1.bal_inq_rs.acct_id.bank_info.post_addr.addr1}"

# r2 = c.mark_lien('ARJSB2', 10, '0001', {:block_id => 'TEST', :reason_code => '001'})
# p "BlockModify: RESPONSE OBJECT ~> [#{r2.inspect}]"
# p "BlockModify: Stan is #{r2.block_modify_output_vo.stan}"

r3 = c.cash_drop('TFSB02','ARJSB2', 10, {:currency_code => 'USD', :value_dt => "2014-02-14T00:00:00.000"})
p "XferTrnAdd CASHDROP: RESPONSE OBJECT ~> [#{r3.inspect}]"
p "XferTrnAdd CASHDROP: Transaction Date is #{r3.xfer_trn_add_rs.trn_identifier.trn_dt}"

r4 = c.cash_pickup('TFSB02','ARJSB2', 10, 
  {:currency_code => 'USD', 
    :value_dt => "2014-02-14T00:00:00.000", 
    :pmt_inst => {
      :pmt_inst_dt => "2014-02-15T00:00:00.000", 
      :pmt_inst_alpha => '#$', 
      :pmt_inst_num => '123456'
    }
  })
p "XferTrnAdd CASHDROP: RESPONSE OBJECT ~> [#{r4.inspect}]"
p "XferTrnAdd CASHDROP: Transaction Date is #{r4.xfer_trn_add_rs.trn_identifier.trn_dt}"