Customer Details Aggregate
---------------------------

The RetCustInq and the RetCustAcctInq APIs gets mashed up using Apache Camel.
Refer the API Fascade layer @[https://github.com/StrataLabs/ratnakar-apiservices](https://github.com/StrataLabs/ratnakar-apiservices)

The request is of type GET in the following format :
[http://<apache camel endpoint>/services/customers?custId=8121908890901&custType=Retail](#)

The final response tags comes enclosed as below :
    <FIXML>
      <Body>
        <CustomerDetailsAggregate>
          <RetCustInqResponse> ... </RetCustInqResponse>  <!-- response from RetCustInq -- >
          <RetCustAcctInqResponse> ... </RetCustAcctInqResponse>  <!-- response from RetCustAcctInq -- >
        </CustomerDetailsAggregate>
      </Body>
    </FIXML>
