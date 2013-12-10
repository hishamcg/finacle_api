require 'finacle_api/common/serializable_object'

module FinacleApi
  module DeDuplicationInq
    module ResponseEntity
      # <AddrLine1>ISALMAPUR</AddrLine1>
      # <AddrLine2>TAL WALWA</AddrLine2>
      # <AddrLine3>null</AddrLine3>
      # <BankId>01</BankId>
      # <CustId>8002501010001337</CustId>
      # <CustType>Retail</CustType>
      # <ContactsKey/>
      # <CustIdType1/>
      # <CustIdType10/>
      # <CustIdType2/>
      # <CustIdType3/>
      # <CustIdType4/>
      # <CustIdType5/>
      # <CustIdType6/>
      # <CustIdType7/>
      # <CustIdType8/>
      # <CustIdType9/>
      # <BirthDt>1901-01-01T00:00:00.000</BirthDt>
      # <FirstName>FARIDA</FirstName>
      # <LastName>IBUSHE</LastName>
      # <MiddleName>AFZAL</MiddleName>
      # <NonCustKey/>
      # <SuspectsKey/>
      class SearchDedupData < SerializableObject
        attr_accessor :addr_line1, :addr_line2, :addr_line3, :bank_id, :cust_id, :cust_type, :contacts_key,
                      :cust_id_type1, :cust_id_type2, :cust_id_type3, :cust_id_type4, :cust_id_type5, 
                      :cust_id_type6, :cust_id_type7, :cust_id_type8, :cust_id_type9, :cust_id_type10,
                      :birth_dt, :first_name, :last_name, :middle_name, :non_cust_key, :suspects_key
      end
    end
  end
end