require 'helper'

describe FinacleApi::Common do 

  before do
    class ABC
      include FinacleApi::Common 
    end
    @abc = ABC.new
  end

  describe "#error_object" do

    it "should return FISystemException on receiving finacle system error hash" do
      error_hash = {:error => {:fi_system_exception=>{:error_detail=>{:error_code=>"00", :error_desc=>"Finacle System Error", :error_type=>"SE"}}}}
      obj = @abc.error_object(error_hash)
      obj.should be_a FinacleApi::Common::FISystemException
    end

    it "should return FIBusinessException on receiving finacle validation error hash" do
      error_hash = {:error => {:fi_business_exception=>{:error_detail=>{:error_code=>"312", :error_desc=>"Account Not Found", :error_type=>"ACT"}}}}
      obj = @abc.error_object(error_hash)
      obj.should be_a FinacleApi::Common::FIBusinessException
    end

  end
  
end