require 'sinatra'

get '/BalInq' do
  content_type 'text/xml'
  erb :bal_inq_response
end

get '/RetCustAcctInq' do
  content_type 'text/xml'
  erb :ret_cust_acct_inq_response
end

post '/BalInq' do
  raw = request.env["rack.input"].read
  p "XML DATA ~ [#{raw.inspect}]"
  content_type 'text/xml'
  erb :bal_inq_response
end

post '/RetCustAcctInq' do
  raw = request.env["rack.input"].read
  p "XML DATA ~ [#{raw.inspect}]"
  content_type 'text/xml'
  erb :ret_cust_acct_inq_response
end