require 'finacle_api'

c = FinacleApi::Client.new(:user_id => '01212', :password => 'passpass', :endpoint => 'http://localhost:4567')

r1 = c.balance_inquiry('1007710010000223')
p "BalInq: RESPONSE OBJECT ~> [#{r1.inspect}]"
p "BalInq: AddressLine1 is #{r1.bal_inq_rs.acct_id.bank_info.post_addr.addr1}"

r2 = c.mark_lien('ARJSB2', 10, '0001', {:block_id => 'TEST', :reason_code => '001'})
p "BlockModify: RESPONSE OBJECT ~> [#{r2.inspect}]"
p "BlockModify: Stan is #{r2.block_modify_output_vo.stan}"

