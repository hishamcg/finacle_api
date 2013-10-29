module FinacleApi
  class Config
    attr_accessor :endpoints

    def initialize(options={})
      options.each do |key, value|
        send(:"#{key}=", value)
      end
    end

  end
end