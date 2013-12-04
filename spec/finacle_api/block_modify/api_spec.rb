require 'helper'


describe FinacleApi::BlockModify::API do	

  before do
    @client = FinacleApi::Client.new(:user_id => 'user', :password => 'password', :endpoint => 'http://localhost:4000')
  end

  describe '#mark_lien' do

    before do
      stub_request(:post, "http://localhost:4000/FISERVLET/fihttp").to_return(:body => fixture("block_modify_response.xml"))
      @response = @client.mark_lien('ARJSB2', 10, '0001', {:block_id => 'TEST', :reason_code => '001'})
    end

    it 'calls the correct url for marking lien' do
      a_request(:post, "http://localhost:4000/FISERVLET/fihttp").should have_been_made
    end

    it 'returns BlockModifyResponse' do
      @response.should be_a FinacleApi::BlockModify::ResponseEntity::BlockModifyResponse
    end

  end

end