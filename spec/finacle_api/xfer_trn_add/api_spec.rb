require 'helper'


describe FinacleApi::XferTrnAdd::API do	

  before do
    @client = FinacleApi::Client.new(:user_id => 'user', :password => 'password', :endpoint => 'http://localhost:4000')
  end


  describe '#cash_drop' do

    before do
      stub_request(:post, "http://localhost:4000/FISERVLET/fihttp").to_return(:body => fixture("cash_drop_response.xml"))
      @response = @client.cash_drop('1008810030000203','1008810030000286', 10, 
          { :value_dt => "2012-12-12T00:00:00.000", 
            :pmt_inst => {
              :pmt_inst_dt => "2013-12-11T00:00:00.000", 
              :pmt_inst_alpha => '#$', 
              :pmt_inst_num => '123456'    
            }
          }
      )
    end

    it 'calls the correct url for cash drop' do
      a_request(:post, "http://localhost:4000/FISERVLET/fihttp").should have_been_made
    end

    it 'returns XferTrnAddResponse' do
      @response.should be_a FinacleApi::XferTrnAdd::ResponseEntity::XferTrnAddResponse
    end

  end


  describe '#cash_pickup' do

    before do
      stub_request(:post, "http://localhost:4000/FISERVLET/fihttp").to_return(:body => fixture("cash_pickup_response.xml"))
      @response = @client.cash_pickup('1008810030000203','1008810030000286', 10, 
          {:currency_code => 'INR', 
            :value_dt => "2013-04-11T00:00:00.000", 
            :pmt_inst => {
              :pmt_inst_dt => "2013-04-11T00:00:00.000", 
              :pmt_inst_alpha => '#$', 
              :pmt_inst_num => '123456'
            }
          }
      )
    end

    it 'calls the correct url for cash pickup' do
      a_request(:post, "http://localhost:4000/FISERVLET/fihttp").should have_been_made
    end

    it 'returns XferTrnAddResponse' do
      @response.should be_a FinacleApi::XferTrnAdd::ResponseEntity::XferTrnAddResponse
    end

  end

end