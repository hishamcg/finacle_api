require 'helper'


describe FinacleApi::BlockModify::API do	

  before do
    @client = FinacleApi::Client.new(:user_id => 'user', :password => 'password', :endpoint => 'http://localhost:4000')
  end

  describe '#mark_lien' do

    before do
      stub_get("/FISERVLET/fihttp").to_return(:body => fixture("block_modify_response.xml"))
    end

    it 'calls the correct url for marking lien' do
    	pending('#TODO')
    end

    it 'returns BlockModifyResponse' do
    	pending('#TODO')
    end

  end

end