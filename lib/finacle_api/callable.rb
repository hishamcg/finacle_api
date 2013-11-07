require 'finacle_api/bal_inq/api'
require 'finacle_api/block_modify/api'

# add your api call functions here

module FinacleApi
  module Callable
    include FinacleApi::BalInq::API
    include FinacleApi::BlockModify::API

  end
end