module FinacleApi
  module Utils

    def response_from(klass, request_method, path, options)
      response = send(request_method.to_sym, path, options)[:body]
      response
    end

  end
end