module FinacleApi
  module Utils

    def objects_from_response(klass, request_method, path, obj)
      response = send(request_method.to_sym, path, options)[:body]
      objects_from_array(klass, response)
    end

    def objects_from_array(klass, array)
      array.map do |element|
        klass.new(element)
      end
    end

  end
end