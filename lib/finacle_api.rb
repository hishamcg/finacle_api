require "finacle_api/version"
require "finacle_api/client"


module FinacleApi
  class << self
    def config
      @@config ||= FinacleApi::Config.instance
    end
  end

end