require 'active_model'

class SerializableObject
  include ActiveModel::Serializers::Xml

  def initialize(options={})
    options.each do |key, value|
      send(:"#{key}=", value) if respond_to?(:"#{key}=")
    end
  end

  def attributes
    {}
  end
end
