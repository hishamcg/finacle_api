require 'finacle_api/bal_inq/api'
require 'finacle_api/block_modify/api'
require 'finacle_api/xfer_trn_add/api'
require 'finacle_api/stop_chk_add/api'


# add your api call functions here

module FinacleApi
  module Callable
    include FinacleApi::BalInq::API
    include FinacleApi::BlockModify::API
    include FinacleApi::XferTrnAdd::API
    include FinacleApi::StopChkAdd::API
  end
end