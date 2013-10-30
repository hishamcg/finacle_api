require 'sinatra'

get '/FISERVLET/fihttp' do
  content_type 'text/xml'
  erb :bal_inq_response
end

post '/FISERVLET/fihttp' do
  p "request is [ #{request.inspect} ]"
  raw = request.env["rack.input"].read
  p "XML DATA ~ [#{raw.inspect}]"
  content_type 'text/xml'
  erb :bal_inq_response
end
