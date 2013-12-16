require "finacle_api/client"
require 'finacle_api/callable'

module FinacleApi
  class FinacleClient < Client
    include FinacleApi::Callable
  end
end