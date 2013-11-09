require 'active_record'

module FinacleApi
  module ORM
    module ActiveRecord
      class CustomerDetails < ::ActiveRecord::Base
        self.table_name = PublicActivity.config.customer_details_table

        if ::ActiveRecord::VERSION::MAJOR < 4
          attr_accessible :account_name, :cif, :email, :mobile_no, :segment, :sub_segment, 
            :rm_id, :account_sol_id, :account_sol_desc, :pan, 
            :address1, :address2, :address3, :city, :state, :country, :pin
            :account_status, :freeze_status
        end
      end
    end
  end
end