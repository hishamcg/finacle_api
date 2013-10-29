require 'faraday'
require 'faraday_middleware'
require "finacle_api/common"
require 'finacle_api/base'
require "finacle_api/error"
require "finacle_api/config"

module FinacleApi
  class Client
    include FinacleApi::Base
    attr_accessor :user_id, :password, :endpoint, :config

    def initialize(options={})
      options.each do |key, value|
        send(:"#{key}=", value)
      end
    end

    def security
      FinacleApi::Common::Security.new(:token => {:password_token => {:user_id => user_id, :password => password}})
    end

    def connection_options
      @connection_options ||= {
        :builder => middleware,
        :headers => {
          :accept => 'application/xml',
          :user_agent => user_agent,
        },
        :request => {
          :open_timeout => 5,
          :timeout => 10,
        },
      }
    end

    def middleware
      @middleware ||= Faraday::Builder.new do |builder|
        # Checks for files in the payload
        builder.use Faraday::Request::Multipart
        # Convert request params to "www-form-urlencoded"
        builder.use Faraday::Request::UrlEncoded
        # faraday adapter fror
        builder.use FaradayMiddleware::ParseXml,  :content_type => /\bxml$/
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
      signature_params = params.values.any?{|value| value.respond_to?(:to_io)} ? {} : params
      request(:post, path, params, signature_params)
    end

    def user_agent
      @user_agent ||= "Finacle Ruby Gem #{FinacleApi::VERSION}"
    end

    private

    # Returns a Faraday::Connection object
    # @return [Faraday::Connection]
    def connection
      @connection ||= Faraday.new(endpoint, connection_options)
    end

    def request(method, path, params={}, signature_params=params)
      response = connection.send(method.to_sym, path, params) do |request|
        request.headers[:accept] = '*/*'
      end
      response.env
    rescue Faraday::Error::ClientError
      raise FinacleApi::Error
    end

  end
end