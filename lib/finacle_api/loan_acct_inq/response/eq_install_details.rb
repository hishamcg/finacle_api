require 'finacle_api/common/serializable_object' 
module FinacleApi
  module LoanAcctInq
    module ResponseEntity
      class EqInstallDetails < SerializableObject
        attr_accessor :eq_install_flg, :eq_install_type, :eq_install_formula

      end
    end
  end
end
