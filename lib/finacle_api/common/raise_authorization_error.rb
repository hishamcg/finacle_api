require 'faraday'
require 'faraday_middleware'
require 'forwardable'

module Faraday

  class Response::RaiseAuthorizationError < Response::Middleware
    ClientErrorStatuses = 400...600
    extend Forwardable
    def initialize(app, logger = nil)
      super(app)
      @logger = logger || begin
        require 'logger'
        ::Logger.new(STDOUT)
      end
    end
    def_delegators :@logger, :debug, :info, :warn, :error, :fatal

    def on_complete(env)
      info "Got resonse - status #{env[:status]}"
      case env[:status]
      when 401
        raise Faraday::Error::AuthenticationFailed, response_values(env)
      when 404
        raise Faraday::Error::ResourceNotFound, response_values(env)
      when 407
        # mimic the behavior that we get with proxy requests with HTTPS
        raise Faraday::Error::ConnectionFailed, %{407 "Proxy Authentication Required "}
      when ClientErrorStatuses
        raise Faraday::Error::ClientError, response_values(env)
      end
    end

    def response_values(env)
      {:status => env[:status], :headers => env[:response_headers], :body => env[:body]}
    end
  end #end of class


end


module Faraday
  class Error::AuthenticationFailed < Faraday::Error::ClientError;   end
end
