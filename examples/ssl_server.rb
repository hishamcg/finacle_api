require 'sinatra/base'
require 'webrick'
require 'webrick/https'
require 'openssl'

CERT_PATH = '/mnt/code/xbit/certs/'

webrick_options = {
        :Port               => 8443,
        :Logger             => WEBrick::Log::new($stderr, WEBrick::Log::DEBUG),
        :DocumentRoot       => "/mnt/code/xbit/finacle_api/examples",
        :SSLEnable          => true,
        :SSLVerifyClient    => OpenSSL::SSL::VERIFY_NONE,
        :SSLCertificate     => OpenSSL::X509::Certificate.new(  File.open(File.join(CERT_PATH, "server.crt")).read),
        :SSLPrivateKey      => OpenSSL::PKey::RSA.new(          File.open(File.join(CERT_PATH, "server.key")).read),
        :SSLCertName        => [ [ "CN",WEBrick::Utils::getservername ] ]
}

class SSLServer < Sinatra::Base

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


  # def self.run!
  #   rack_handler_config = {}

  #   ssl_options = {
  #     :private_key_file => '/mnt/code/xbit/certs/server.key',
  #     :cert_chain_file => '/mnt/code/xbit/certs/server.crt',
  #     :verify_peer => false,
  #   }

  #   Rack::Handler::Thin.run(self, rack_handler_config) do |server|
  #     server.ssl = true
  #     server.ssl_options = ssl_options
  #   end
  # end


end

Rack::Handler::WEBrick.run SSLServer, webrick_options