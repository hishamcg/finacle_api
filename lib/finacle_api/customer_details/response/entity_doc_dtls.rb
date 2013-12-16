require 'finacle_api/common/serializable_object'

module FinacleApi
  module CustomerDetails
    module ResponseEntity
      class EntityDocDtls < SerializableObject
        attr_accessor :country_of_issue, :doc_code, :is_doc_deleted, :doc_issue_dt, :doc_rmks, :doc_type_code, 
            :doc_type_desc, :entity_type, :identification_type, :place_of_issue, :ref_num, :status
      end
    end
  end
end