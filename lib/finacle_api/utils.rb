module FinacleApi
  module Utils

    def response_from(klass, request_method, path, options)
      p "klass #{klass}, #{request_method}, #{path}, #{options}"
      response = send(request_method.to_sym, path, options)[:body]
      p "response body => #{response.inspect}"
      # objects_from_array(klass, response)
      response
    end

  end
end