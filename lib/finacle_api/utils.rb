module FinacleApi
  module Utils

    def response_from(request_method, path, options)
      response = send(request_method.to_sym, path, options)[:body]
      response
    end

    def convert_hash_keys(value)
      case value
        when Array
          value.map { |v| convert_hash_keys(v) }
          # or `value.map(&method(:convert_hash_keys))`
        when Hash
          Hash[value.map { |k, v| [underscore_key(k), convert_hash_keys(v)] }]
        else
          value
       end
    end

    def underscore_key(k)
      k.to_s.underscore.to_sym
      # Or, if you're not in Rails:
      # to_snake_case(k.to_s).to_sym
    end

  end
end