require 'sinatra'

get '/FISERVLET/fihttp' do
  content_type 'text/xml'
  erb :error_response
end

get '/api/services/customers' do
  content_type 'text/xml'
  erb :customer_details_response
end

post '/FISERVLET/fihttp' do
  p "request is [ #{request.inspect} ]"
  raw = request.env["rack.input"].read
  p "XML DATA ~ [#{raw.inspect}]"
  # content_type 'text/xml'
  # erb :xfer_trn_add_response
  # erb :error_response
  # erb :system_error_response
  # erb :de_duplication_inq_response
  erb :customer_details_response
end
