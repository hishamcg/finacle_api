require 'faraday'
require 'faraday_middleware'
require "finacle_api/common"
require 'finacle_api/callable'
require "finacle_api/exception"



module FinacleApi
  class Client
    include FinacleApi::Callable
    attr_accessor :user_id, :password, :endpoint

    def initialize(options={})
      options.each do |key, value|
        send(:"#{key}=", value)
      end
    end

    def connection_options
      @connection_options ||= {
        :builder => middleware,
        :headers => {
          :accept => 'application/xml',
          :user_agent => user_agent,
        },
        :ssl => {:verify => false}
      }
    end

    def middleware
      @middleware ||= Faraday::Builder.new do |builder|
        # Checks for files in the payload
        builder.use Faraday::Request::Multipart
        # Convert request params to "www-form-urlencoded"
        builder.use Faraday::Request::UrlEncoded
        # faraday adapter fror
        builder.use FaradayMiddleware::ParseXml
        # Set Faraday's HTTP adapter
        builder.adapter Faraday.default_adapter
      end
    end

    # Perform an HTTP GET request
    def get(path, params={})
      request(:get, path, params)
    end

    # Perform an HTTP POST request
    def post(path, params={})
      request(:post, path, params)
    end

    def user_agent
      @user_agent ||= "Finacle Ruby Gem #{FinacleApi::VERSION}"
    end

    def security_hash
      {:token => {:password_token => {:user_id => user_id, :password => password}}}
    end

    private

    # Returns a Faraday::Connection object
    # @return [Faraday::Connection]
    def connection
      @connection ||= Faraday.new(endpoint, connection_options)
    end

    def request(method, path, params={})
      response = connection.send(method.to_sym, path, params) do |request|
        request.headers[:accept] = '*/*'
        request.headers['Content-Type'] = 'application/x-www-form-urlencoded'
      end
      response.env
    rescue Faraday::Error::ClientError => ce
      raise FinacleApi::Exception::ClientException.new(ce.message)
    end

  end
end