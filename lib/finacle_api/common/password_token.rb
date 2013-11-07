require 'finacle_api/common/serializable_object'

module FinacleApi
  module Common
    # <PasswordToken>
    #   <UserId></UserId>
    #   <Password></Password>
    # </PasswordToken>
    class PasswordToken < SerializableObject
      attr_accessor :user_id, :password
    end
  end
end