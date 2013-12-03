require 'helper'


describe FinacleApi::XferTrnAdd::API do	

  before do
    @client = FinacleApi::Client.new(:user_id => 'user', :password => 'password', :endpoint => 'http://localhost:4000')
  end


  describe '#cash_drop' do

    before do
      stub_get("/FISERVLET/fihttp").to_return(:body => fixture("cash_drop_response.xml"))
    end

    it 'calls the correct url for cash drop' do
    	pending('#TODO')
    end

    it 'returns XferTrnAddResponse' do
    	pending('#TODO')
    end

  end


  describe '#cash_pickup' do

    before do
      stub_get("/FISERVLET/fihttp").to_return(:body => fixture("cash_pickup_response.xml"))
    end

    it 'calls the correct url for cash pickup' do
      pending('#TODO')
    end

    it 'returns XferTrnAddResponse' do
      pending('#TODO')
    end

  end

end