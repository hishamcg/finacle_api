require 'helper'

describe FinacleApi::DeDuplicationInq::API do	

  before do
    @client = FinacleApi::Client.new(:user_id => 'user', :password => 'password', :endpoint => 'http://localhost:4000')
  end

  describe '#customer_search' do

    before do
      stub_request(:post, "http://localhost:4000/FISERVLET/fihttp").to_return(:body => fixture("de_duplication_inq_response.xml"))
      @response = @client.customer_search(first_name: 'ABC', last_name: 'DEF')
    end

    it 'calls the correct url for marking lien' do
      a_request(:post, "http://localhost:4000/FISERVLET/fihttp").should have_been_made
    end

    it 'returns DeDuplicationInqResponse' do
      @response.should be_a FinacleApi::DeDuplicationInq::ResponseEntity::DeDuplicationInqResponse
    end

  end

end