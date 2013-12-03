require 'helper'


describe FinacleApi::BalInq::API do	

  before do
    @client = FinacleApi::Client.new(:user_id => 'user', :password => 'password', :endpoint => 'http://localhost:4000')
  end

  describe '#balance_inquiry' do

    before do
      stub_get("/FISERVLET/fihttp").to_return(:body => fixture("bal_inq_response.xml"))
    end

    it 'calls the correct url for balance enquiry' do
    	pending('#TODO')
    end

    it 'returns BalInqResponse' do
    	pending('#TODO')
    end

  end

end