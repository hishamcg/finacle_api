require 'helper'


describe FinacleApi::BalInq::API do	

  before do
    @client = FinacleApi::Client.new(:user_id => 'user', :password => 'password', :endpoint => 'http://localhost:4000')
  end

  describe '#balance_inquiry' do

    before do
      stub_request(:post, "http://localhost:4000/FISERVLET/fihttp").to_return(:body => fixture("bal_inq_response.xml"))
      @response = @client.balance_inquiry('1007710010000223')
    end

    it 'calls the correct url for balance enquiry' do
      a_request(:post, "http://localhost:4000/FISERVLET/fihttp").should have_been_made
    end

    it 'returns BalInqResponse' do
      @response.should be_a FinacleApi::BalInq::ResponseEntity::BalInqResponse
    end

  end

end