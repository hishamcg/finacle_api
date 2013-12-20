require "finacle_api/client"
require 'finacle_api/callable_services'

module FinacleApi
  class ServicesClient < Client
    include FinacleApi::CallableServices

    private

    # Returns a Faraday::Connection object
    # @return [Faraday::Connection]
    def connection
      @connection ||= Faraday.new(endpoint, connection_options)
      @connection.basic_auth("#{self.user_id}", "#{self.password}")
      @connection
    end

  end
end