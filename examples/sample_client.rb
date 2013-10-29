require 'finacle_api'
c = FinacleApi::Client.new(:user_id => '01212', :password => 'passpass', :endpoint => 'http://localhost:4567')

c.get('/BalInq')
c.balance_inquiry('312000001901')
