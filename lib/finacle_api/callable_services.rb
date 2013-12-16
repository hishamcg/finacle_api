require 'finacle_api/customer_details/api'

# add your api services functions here
# services functions are those which are via the Services Layer, which stands as a middleware to FinacleAPI calls

module FinacleApi
  module CallableServices
    include FinacleApi::CustomerDetails::API
  end
end