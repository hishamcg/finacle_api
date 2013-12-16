require 'helper'


describe FinacleApi::StopChkAdd::API do

  before do
    @client = FinacleApi::Client.new(:user_id => 'user', :password => 'password', :endpoint => 'http://localhost:4000')
  end

 describe '#stop_payment' do

    before do
      stub_request(:post, "http://localhost:4000/FISERVLET/fihttp").to_return(:body => fixture("stop_chk_add_response.xml"))
      @response = @client.stop_payment('1007710010000223',"345561111","5", "2013-09-29T00:00:00.000")
    end

    it 'calls the correct url for balance enquiry' do
      a_request(:post, "http://localhost:4000/FISERVLET/fihttp").should have_been_made
    end

    it 'returns stop payment response' do
      @response.should be_a FinacleApi::StopChkAdd::ResponseEntity::StopChkAddResponse
    end

  end

end
