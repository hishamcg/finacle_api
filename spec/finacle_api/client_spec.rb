require 'helper'

describe FinacleApi::Client do

  before do
    @client = FinacleApi::Client.new(:user_id => 'user', :password => 'password', :endpoint => 'http://localhost:4000')
  end

  it "should have ssl peer verification turned off" do
    connection = Faraday.new(@client.endpoint, @client.connection_options)
    connection.ssl.should include(:verify => false)
  end

  it "should recognize itself as Finacle Ruby Gem" do
    @client.user_agent.should eq("Finacle Ruby Gem #{FinacleApi::VERSION}")
  end

  it "should have a token including user_id & password" do
    @client.security_hash[:token][:password_token].should include(:user_id => @client.user_id, :password => @client.password)
  end

  context 'HTTP Requests' do
    before do
      stub_request(:any, "http://localhost:4000/endpoint_url").
        with(:headers => {'Accept'=>'*/*', 'Content-Type'=>'application/x-www-form-urlencoded', 'User-Agent'=>"Finacle Ruby Gem #{FinacleApi::VERSION}"}).
        to_return(:status => 200, :body => "", :headers => {})
    end

    it "should be able to make post requests" do
      @client.post('endpoint_url')
      a_request(:post, "http://localhost:4000/endpoint_url").should have_been_made
    end

    it "should be able to make get requests" do
      @client.get('endpoint_url')
      a_request(:get, "http://localhost:4000/endpoint_url").should have_been_made
    end

  end

end
