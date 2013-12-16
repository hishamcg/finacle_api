require "finacle_api/client"
require 'finacle_api/callable_services'

module FinacleApi
  class ServicesClient < Client
    include FinacleApi::CallableServices
  end
end