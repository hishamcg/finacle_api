require 'helper'

describe FinacleApi::Utils do

  before do
    class ABC
      include FinacleApi::Utils 
    end
    @abc = ABC.new
  end

  describe '#convert_hash_keys' do
    it "should convert hash keys to snake case" do
      sample_hash = {'FirstName' => 'John', 'LastName' =>'Smith', 'Friend' => { 'FirstName' => 'Jane', 'LastName' => 'Smith'}}
      converted_hash = @abc.convert_hash_keys(sample_hash)
      converted_hash.should include(:first_name => 'John', :last_name => 'Smith')
      converted_hash[:friend].should include(:first_name => 'Jane', :last_name => 'Smith')
    end

    it "should leave hash keys as-is if already in snake case" do
      sample_hash = {'UserName' => 'John', 'Password' =>'password'}
      converted_hash = @abc.convert_hash_keys(sample_hash)
      converted_hash.should include(:user_name => 'John', :password => 'password')
    end

  end

end