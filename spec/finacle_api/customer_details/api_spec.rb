require 'helper'


describe FinacleApi::CustomerDetails::API do

  before do
    @client = FinacleApi::ServicesClient.new(:user_id => 'user', :password => 'password', :endpoint => 'http://localhost:4000')
  end

 describe '#customer_details' do

    before do
      @cust_id = '8991007710010000223'
      @cust_type = 'Retail'
      stub_request(:get, "http://localhost:4000/api/services/customers?custId=#{@cust_id}&custType=#{@cust_type}").to_return(:body => fixture("customer_details_response.xml"))
      @response = @client.customer_details("#{@cust_id}", {
          :cust_type => "#{@cust_type}"
      })
    end

    it 'calls the correct url for balance enquiry' do
      a_request(:get, "http://localhost:4000/api/services/customers?custId=#{@cust_id}&custType=#{@cust_type}").should have_been_made
    end

    it 'returns stop payment response' do
      @response.should be_a FinacleApi::CustomerDetails::ResponseEntity::CustomerDetailsAggregate
    end

  end

end
