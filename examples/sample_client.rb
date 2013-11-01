require 'finacle_api'

c = FinacleApi::Client.new(:user_id => '01212', :password => 'passpass', :endpoint => 'http://localhost:4567')
r = c.balance_inquiry('1007710010000223')
p "#{r.inspect}"
p "AddressLine1 is #{r.bal_inq_rs.acct_id.bank_info.post_addr.addr1}"
